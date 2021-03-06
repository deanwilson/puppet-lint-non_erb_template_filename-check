Gem::Specification.new do |spec|
  spec.name        = 'puppet-lint-non_erb_template_filename-check'
  spec.version     = '0.1.1'
  spec.homepage    = 'https://github.com/deanwilson/puppet-lint-non_erb_template_filename-check'
  spec.license     = 'MIT'
  spec.author      = 'Dean Wilson'
  spec.email       = 'dean.wilson@gmail.com'
  spec.files       = Dir[
    'README.md',
    'LICENSE',
    'lib/**/*',
    'spec/**/*',
  ]
  spec.test_files  = Dir['spec/**/*']
  spec.summary     = 'puppet-lint non_erb_template_filename check'
  spec.description = <<-DESCRIPTION
    Extends puppet-lint to ensure all filenames used in template functions
    end with the string '.erb'
  DESCRIPTION

  spec.add_dependency             'puppet-lint', '>= 1.1', '< 3.0'

  spec.add_development_dependency 'rake', '~> 13.0.0'
  spec.add_development_dependency 'rspec', '~> 3.9.0'
  spec.add_development_dependency 'rspec-collection_matchers', '~> 1.0'
  spec.add_development_dependency 'rspec-its', '~> 1.0'
  spec.add_development_dependency 'rspec-json_expectations', '~> 2.2'
  spec.add_development_dependency 'rubocop', '~> 0.87.0'
  spec.add_development_dependency 'simplecov', '~> 0.17.1'
end
