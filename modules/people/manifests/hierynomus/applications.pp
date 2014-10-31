class people::hierynomus::applications {
  include onepassword
  include evernote
  include sonos
  include dropbox
  include hipchat
  include chrome
  include skype
  include zsh
  include caffeine
  include java

  ruby_gem { 'git-up on 2.1.2':
    gem => 'git-up',
    ruby_version => "2.1.2",
  }
}