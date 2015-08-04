#Bash

####Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with bash](#setup)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
6. [Limitations - OS compatibility, etc.](#limitations)

##Overview

The bash module manages your system's Bash configuration

##Module Description

The bash module installs and configures the Bash Shell across multiple operating systems and distributions.

##Setup

###Beginning with bash

`include '::bash'` will be enough to get you started. :


##Usage

All interaction with the bash module can be done through the main host class. This means you can simply (and easily) mess with the options in `::bash` to have full functionality of the module.

###I just want to manage bash, what's the minimum I need?

```puppet
include '::bash'
```

###I'd like to always have the latest version of Bash

```puppet
class { '::bash':
  ensure => latest,
}
```


##Reference

###Classes

####Public Classes

* bash: Main class, includes all other classes.

####Private Classes

* bash::config: Handles the configuration files.

###Parameters

The following parameters are available in the `::bash` class:

####`ensure`

Package ensure value (installed, purged, absent). Default value: installed


##Limitations

This module has been tested on Ubuntu 14.04 and Debian 8 (Jessie). No issues have been identified as of now.


##License

This module is licensed under the GNU General Public License 3.0

##Contact

brotherballantine@gmail.com

##Support

There's nothing official yet.
Just shoot me an email and I'll get to your request.
