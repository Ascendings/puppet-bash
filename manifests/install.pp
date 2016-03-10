# See README.md for details.
class bash::install inherits ::bash {

  package { $::bash::package_name:
    ensure   => $::bash::package_ensure,
    provider => $::bash::package_provider,
    source   => $::bash::package_source ? {
      false   => undef,
  	  default => $::bash::package_source,
  	}
  }

  package { $::bash::completion_name:
    ensure   => $::bash::completion_ensure,
    provider => $::bash::completion_provider,
    source   => $::bash::completion_source ? {
      false   => undef,
  	  default => $::bash::completion_source,
  	}
  }

  # Creates a symlink for bash
  if $::bash::create_symlink {
    file { $::bash::symlink_name:
      ensure => 'link',
      target => $::bash::symlink_target,
    }
  }

}
