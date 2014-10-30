class people::hierynomus {
  include onepassword
  include evernote
  include sonos
  include dropbox
  include iterm2::dev
  include iterm2::colors::solarized_dark
  include iterm2::colors::solarized_light
  include sublime_text
  include hipchat


  # $home     = "/Users/${::boxen_user}"
  # $my       = "${home}/my"
  # $dotfiles = "${my}/dotfiles"
  
  # file { $my:
  #   ensure  => directory
  # }

  # repository { $dotfiles:
  #   source  => 'jbarnette/dotfiles',
  #   require => File[$my]
  # }
}
