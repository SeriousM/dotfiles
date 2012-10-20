#!/usr/bin/env ruby
require 'irb/completion'
require 'irb/ext/save-history'

# Defaults
IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:AUTO_INDENT] = true
IRB.conf[:USE_READLINE] = true

# Awesome Print
require 'ap'

# Enable colored output
require 'wirble'
Wirble.init
Wirble.colorize

# ASCII table views
require 'hirb'
Hirb.enable
extend Hirb::Console
