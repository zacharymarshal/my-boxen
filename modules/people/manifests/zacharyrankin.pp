class people::zacharyrankin {

  # default includes

  include plist
  
  # applications

  include brewcask

  ## brewcask

  package { '1password':      provider => 'brewcask' }
  package { 'atom':           provider => 'brewcask' }
  package { 'battle-net':     provider => 'brewcask' }
  package { 'dash':           provider => 'brewcask' }
  package { 'divvy':          provider => 'brewcask' }
  package { 'dropbox':        provider => 'brewcask' }
  package { 'github':         provider => 'brewcask' }
  package { 'google-chrome':  provider => 'brewcask' }
  package { 'phpstorm':       provider => 'brewcask' }
  package { 'postgres':       provider => 'brewcask' }
  package { 'slack':          provider => 'brewcask' }
  package { 'spotify':        provider => 'brewcask' }
  package { 'the-unarchiver': provider => 'brewcask' }

  ## iterm2

  include iterm2::dev
  include iterm2::colors::solarized_dark

  ## sublime text 3

  include sublime_text

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
