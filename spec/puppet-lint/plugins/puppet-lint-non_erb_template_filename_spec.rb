require 'spec_helper'

describe 'non_erb_template_filename' do

  let(:msg) { 'all template file names should end with ".erb"' }

  context 'template function with one valid file name' do
    let(:code) do
      <<-EOS
        class valid_template_filename {
          file { '/tmp/templated':
            content => template('mymodule/single_file.erb'),
          }
        }
      EOS
    end

    it 'should not detect any problems' do
      expect(problems).to have(0).problems
    end
  end


  context 'template function with single invalid file name' do
    let(:code) do
      <<-EOS
        class multi_templated_file {
          file { '/tmp/templated':
            content => template('mymodule/first_file.erb', 'mymodule/second_file.conf'),
          }
        }
      EOS
    end

    it 'should detect a single problem' do
      expect(problems).to have(1).problem
    end

    it 'should create a warning' do
      expect(problems).to contain_warning(msg).on_line(3).in_column(24)
    end
  end

end
