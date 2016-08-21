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
  spec.description = <<-EOF
    Extends puppet-lint to ensure all filenames used in template functions
    end with the string '.erb'
  EOF

  spec.add_dependency             'puppet-lint', '>= 1.1', '< 3.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rspec-its', '~> 1.0'
  spec.add_development_dependency 'rspec-collection_matchers', '~> 1.0'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rubocop'
end
