class people::hierynomus::dotfiles {

  $repo = hiera('hierynomusCode')
  $home = "/Users/${::boxen_user}"

  repository { 'dotmac':
  	path => "${repo}/dotmac",
  	source => 'hierynomus/dotmac',
 	require => File[$repo],
  }

  repository { 'prezto':
  	path => "${home}/.zprezto",
  	source => 'sorin-ionescu/prezto',
  	require => Package['zsh'],
  }

  file { "${home}/.zlogin":
  	ensure => link,
  	target => "${repo}/dotmac/zsh/zlogin",
  	force => true,
  	require => [Repository['dotmac'], Repository['prezto']],
  }

  file { "${home}/.zlogout":
  	ensure => link,
  	target => "${repo}/dotmac/zsh/zlogout",
  	force => true,
  	require => [Repository['dotmac'], Repository['prezto']],
  }

  file { "${home}/.zpreztorc":
  	ensure => link,
  	target => "${repo}/dotmac/zsh/zpreztorc",
  	force => true,
  	require => [Repository['dotmac'], Repository['prezto']],
  }

  file { "${home}/.zprofile":
  	ensure => link,
  	target => "${repo}/dotmac/zsh/zprofile",
  	force => true,
  	require => [Repository['dotmac'], Repository['prezto']],
  }

  file { "${home}/.zshenv":
  	ensure => link,
  	target => "${repo}/dotmac/zsh/zshenv",
  	force => true,
  	require => [Repository['dotmac'], Repository['prezto']],
  }

  file { "${home}/.zshrc":
  	ensure => link,
  	target => "${repo}/dotmac/zsh/zshrc",
  	force => true,
  	require => [Repository['dotmac'], Repository['prezto']],
  }

  file { "${home}/.tmux.conf":
  	ensure => link,
  	target => "${repo}/dotmac/tmux/tmux.conf",
  	force => true,
  	require => [Repository['dotmac'], Package['tmux']]
  }

  file { "${home}/.gitconfig":
  	ensure => link,
  	target => "${repo}/dotmac/git/gitconfig",
  	force => true,
  }

  file { "${boxen::config::home}/bin/gradle": 
    ensure => link,
    target => "${repo}/dotmac/scripts/gradle",
    force => true,
  }
}