# See README.md for details.
class bash::install inherits ::bash {

  package { $::bash::package_name:
    ensure   => $::bash::package_ensure,
    provider => $::bash::package_provider,
    source   => ? {
      false   => undef,
	  default => $::bash::package_source,
	}
  }
  
  package { $::bash::completion_name:
    ensure   => $::bash::completion_ensure,
    provider => $::bash::completion_provider,
    source   => ? {
      false   => undef,
	  default => $::bash::completion_source,
	}
  }

}