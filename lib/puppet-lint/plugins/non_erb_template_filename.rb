PuppetLint.new_check(:non_erb_template_filename) do
  def check
    resource_indexes.each do |resource|
      next unless resource[:type].value == 'file'

      param_tokens = resource[:param_tokens].select { |pt| pt.value == 'content' }

      param_tokens.each do |content_token|
        value_token = content_token.next_code_token.next_code_token

        next unless value_token.value == 'template'

        current_token = value_token.next_token

        # iterate over all the code tokens until we hit the closing ')'
        until current_token.type == :RPAREN
          current_token = current_token.next_code_token

          next unless current_token.type == :SSTRING && !current_token.value.end_with?('.erb')

          warning = 'all template file names should end with ".erb"'

          notify :warning, {
            message:     warning,
            line:        value_token.line,
            column:      value_token.column,
            param_token: content_token,
            value_token: value_token,
          }
        end
      end
    end
  end
end
