# puppet-lint non ERB template file name check

## DEPRECATED

Extends puppet-lint to ensure all file names used in template functions
end with the string '.erb'.

This plugin has been replaced by 
[puppet-lint-template_file_extension-check](https://github.com/deanwilson/puppet-lint-template_file_extension-check) which provides all the functionality this check does and more. You should move over to the new plugin when possible.

[![Build Status](https://travis-ci.org/deanwilson/puppet-lint-non_erb_template_filename-check.svg?branch=master)](https://travis-ci.org/deanwilson/puppet-lint-non_erb_template_filename-check)


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

## Other puppet-lint plugins

You can find a list of my `puppet-lint` plugins in the
[unixdaemon puppet-lint-plugins](https://github.com/deanwilson/unixdaemon-puppet-lint-plugins) repo.

### Author

[Dean Wilson](http://www.unixdaemon.net)

### License

 * MIT
