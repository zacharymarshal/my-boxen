class people::zacharyrankin {

  $home = "/Users/${::boxen_user}"

  # default includes

  # applications

  include brewcask

  ## brewcask

  package { '1password':      provider => 'brewcask' }
  package { 'atom':           provider => 'brewcask' }
  package { 'battle-net':     provider => 'brewcask' }
  package { 'caffine':        provider => 'brewcask' }
  package { 'dash':           provider => 'brewcask' }
  package { 'dropbox':        provider => 'brewcask' }
  package { 'github':         provider => 'brewcask' }
  package { 'google-chrome':  provider => 'brewcask' }
  package { 'phpstorm':       provider => 'brewcask' }
  package { 'postgres':       provider => 'brewcask' }
  package { 'spotify':        provider => 'brewcask' }
  package { 'the-unarchiver': provider => 'brewcask' }

  ## iterm2

  include iterm2::dev
  include iterm2::colors::solarized_dark

  ## sublime text 3

  include sublime_text

  ## Divvy

  property_list_key { 'Divvy Shortcuts':
    ensure     => present,
    path       => "${home}/Library/Preferences/com.mizage.Divvy.plist",
    key        => 'shortcuts',
    value      => 'YnBsaXN0MDDUAQIDBAUISUpUJHRvcFgkb2JqZWN0c1gkdmVyc2lvblkkYXJjaGl2ZXLRBgdUcm9vdIABqgkKEikqMTo7REVVJG51bGzSCwwNDlYkY2xhc3NaTlMub2JqZWN0c4AJow8QEYACgAWAB90TFBUWFxgZGhscHR4LHyAhIiMgJCUmIh8kKF8QEnNlbGVjdGlvbkVuZENvbHVtbl8QEXNlbGVjdGlvblN0YXJ0Um93XGtleUNvbWJvQ29kZVdlbmFibGVkXWtleUNvbWJvRmxhZ3NfEBRzZWxlY3Rpb25TdGFydENvbHVtbltzaXplQ29sdW1uc1pzdWJkaXZpZGVkV25hbWVLZXlWZ2xvYmFsXxAPc2VsZWN0aW9uRW5kUm93WHNpemVSb3dzEAUQABB+CRIAjAAAEAYIgAMJgARaRnVsbHNjcmVlbtIrLC0wWCRjbGFzc2VzWiRjbGFzc25hbWWiLi9YU2hvcnRjdXRYTlNPYmplY3RYU2hvcnRjdXTdExQVFhcYGRobHB0eCzIgMyI1ICQlNyIfJCgQAhB7CRIAjAAACIAGCYAEVExlZnTdExQVFhcYGRobHB0eCx8gPCI+PyQlQSIfJCgQfAkSAIwAABADCIAICYAEVVJpZ2h00issRkejR0gvXk5TTXV0YWJsZUFycmF5V05TQXJyYXkSAAGGoF8QD05TS2V5ZWRBcmNoaXZlcgAIABEAFgAfACgAMgA1ADoAPABHAE0AUgBZAGQAZgBqAGwAbgBwAIsAoAC0AMEAyQDXAO4A+gEFAQ0BFAEmAS8BMQEzATUBNgE7AT0BPgFAAUEBQwFOAVMBXAFnAWoBcwF8AYUBoAGiAaQBpQGqAasBrQGuAbABtQHQAdIB0wHYAdoB2wHdAd4B4AHmAesB7wH+AgYCCwAAAAAAAAIBAAAAAAAAAEsAAAAAAAAAAAAAAAAAAAId'
  }

  # osx defaults

  osx::recovery_message { 'Simply put, most bad attitudes are the result of selfishness': }

  include osx::global::disable_key_press_and_hold
  include osx::global::enable_keyboard_control_access
  include osx::global::enable_standard_function_keys
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::global::disable_remote_control_ir_receiver
  include osx::global::tap_to_click
  include osx::dock::2d
  include osx::dock::autohide
  include osx::dock::disable_dashboard
  include osx::finder::unhide_library
  include osx::finder::show_all_filename_extensions
  include osx::keyboard::capslock_to_control
  class { 'osx::global::key_repeat_delay':
    delay => 0
  }
  class { 'osx::global::key_repeat_rate':
    rate => 0
  }
  class { 'osx::global::natural_mouse_scrolling':
    enabled => false
  }
  class { 'osx::dock::icon_size':
    size => 50
  }
  class { 'osx::dock::position':
    position => 'bottom'
  }
  osx::dock::hot_corner { 'Bottom Right':
    action => 'Put Display to Sleep'
  }
}
