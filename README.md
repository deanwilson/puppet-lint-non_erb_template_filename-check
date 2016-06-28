# puppet-lint non ERB template file name check

Extends puppet-lint to ensure all file names used in template functions
end with the string '.erb'.

This plugin is an extension of our local style guide and may not suit
your own code base. This sample would trigger the `puppet-lint` warning:

    class valid_template_filename {
      file { '/tmp/templated':
        content => template('mymodule/single_file.config'),
      }
    }

    # all template file names should end with ".erb"


## Installation

To use this plugin add the following line to your Gemfile

    gem 'puppet-lint-non_erb_template_filename-check'

and then run `bundle install`.

## Usage

This plugin provides a new check to `puppet-lint`.

    all template file names should end with ".erb"

#### Author

[Dean Wilson](http://www.unixdaemon.net)

### License

 * MIT
