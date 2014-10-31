class people::hierynomus {
  include people::hierynomus::applications
  include people::hierynomus::applications::sublime_text
  include people::hierynomus::homebrew
  include people::hierynomus::dotfiles
  include people::hierynomus::repos
  include people::hierynomus::osx
  include iterm2::dev
  include iterm2::colors::solarized_dark
  include iterm2::colors::solarized_light

  $localRepo = hiera('hierynomusCode')
  $xebialabsRepo = hiera('xebialabsCode')

  # ssh::key { 'hierynomus': }

  file { $localRepo:
    ensure => directory,
  }

  file { $xebialabsRepo:
    ensure => directory,
  }

  # http://www.logitech.com/pub/techsupport/mouse/mac/lcc3.9.1.b20.zip
}
