class people::hierynomus::repos {
  $repo = hiera('xebialabsCode')

  repository { 'xl-deploy':
  	path => "${repo}/xl-deploy",
  	source => "xebialabs/xl-deploy",
  	protocol => "ssh",
  }

  repository { 'xl-platform':
  	path => "${repo}/xl-platform",
  	source => "xebialabs/xl-platform",
  	protocol => "ssh",
  }

  repository { "${repo}/websphere-plugins":
  	source => "xebialabs/websphere-plugins",
  	protocol => "ssh",
  }

  repository { "${repo}/weblogic-plugins":
  	source => "xebialabs/weblogic-plugins",
  	protocol => "ssh",
  }

  repository { "${repo}/tomcat-plugin":
  	source => "xebialabs/tomcat-plugin",
  	protocol => "ssh",
  }
}