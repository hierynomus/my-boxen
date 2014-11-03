class xebialabs::environment::repositories(
  $sourceDir
) {
  repository { 'xl-deploy':
    path => "${sourceDir}/xl-deploy",
    source => "xebialabs/xl-deploy",
    protocol => "ssh",
  }

  repository { 'xl-platform':
    path => "${sourceDir}/xl-platform",
    source => "xebialabs/xl-platform",
    protocol => "ssh",
  }

  repository { "${sourceDir}/websphere-plugins":
    source => "xebialabs/websphere-plugins",
    protocol => "ssh",
  }

  repository { "${sourceDir}/weblogic-plugins":
    source => "xebialabs/weblogic-plugins",
    protocol => "ssh",
  }

  repository { "${sourceDir}/tomcat-plugin":
    source => "xebialabs/tomcat-plugin",
    protocol => "ssh",
  }

  repository { "${sourceDir}/assessment":
    source => "xebialabs/assessment",
    protocol => "ssh",
  }

  repository { "${sourceDir}/overthere":
    source => "xebialabs/overthere",
    protocol => "ssh",
  }

  repository { "${sourceDir}/overcast":
    source => "xebialabs/overcast",
    protocol => "ssh",
  }

  repository { "${sourceDir}/jbossdm-plugin":
    source => "xebialabs/jbossdm-plugin",
    protocol => "ssh",
  }

  repository { "${sourceDir}/jbossas-plugin":
    source => "xebialabs/jbossas-plugin",
    protocol => "ssh",
  }

  repository { "${sourceDir}/glassfish-plugin":
    source => "xebialabs/glassfish-plugin",
    protocol => "ssh",
  }

  repository { "${sourceDir}/xl-satellite":
    source => "xebialabs/xl-satellite",
    protocol => "ssh",
  }

  repository { "${sourceDir}/xebialabs-gradle":
    source => "xebialabs/xebialabs-gradle",
    protocol => "ssh",
  }

  repository { "${sourceDir}/vagrant":
    source => "xebialabs/vagrant",
    protocol => "ssh",
  }

  repository { "${sourceDir}/xl-test":
    source => "xebialabs/xl-test",
    protocol => "ssh",
  }
}