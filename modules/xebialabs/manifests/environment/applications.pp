class xebialabs::environment::applications {
  include virtualbox
  
  class { 'vagrant':
    version => "1.6.5",
  }
}