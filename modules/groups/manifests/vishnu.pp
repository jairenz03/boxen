# Vishnu: Installation Setup for Senior Backend Developers

class groups::vishnu {
  notify { 'Hello Vishnu member, Let\'s set you up.': }

  $squirrel = 'http://nchc.dl.sourceforge.net/project/squirrel-sql/3-snapshots/snapshot-20150623_2101/squirrel-sql-snapshot-20150623_2101-MACOSX-install.jar'

  # include chrome              # Already included in Site Manifest (manifests/site.pp)
  # include dashlane            # Already included in Site Manifest (manifests/site.pp)
  # include firefox             # Already included in Site Manifest (manifests/site.pp)
  # include github_for_mac      # Deprecated as per github.com/boxen/puppet-github_for_mac
  # include hipchat             # Already included in Site Manifest (manifests/site.pp)
  # include vlc                 # Already included in Site Manifest (manifests/site.pp)

  include mysql
  include netbeans::jee
  include postgresql
  include redis
  include solr
  include springtoolsuite
  include sublime_text
  include textwrangler
  include vagrant
  include virtualbox

  package { 'diffmerge':
    ensure          => installed,
    provider        => 'brewcask',
    install_options => []
  }

  package { 'dbvisualizer':
    ensure          => installed,
    provider        => 'brewcask',
    install_options => []
  }

  package { 'pgadmin3':
    ensure          => installed,
    provider        => 'brewcask',
    install_options => []
  }

  package { 'mysqlworkbench':
    ensure          => installed,
    provider        => 'brewcask',
    install_options => []
  }

  package { 'soap-ui':
    ensure   => installed,
    provider => 'pkgdmg',
    source   => 'http://nchc.dl.sourceforge.net/project/soapui/soapui/5.2.0/SoapUI-5.2.0.dmg'
  }

  package { 'sqlpower architect':
    ensure   => installed,
    provider => 'compressed_app',
    source   => 'http://download.sqlpower.ca/architect/1.0.7/community/SQL-Power-Architect-OSX-1.0.7.tar.gz'
  }

  package { 'talend':
    ensure   => installed,
    provider => 'compressed_app',
    source   => 'http://talend.dreamhosters.com/tos/release/V6.0.0/TOS_DI-20150702_1326-V6.0.0.zip'
  }

  # Java Versions
  # TODO: @devcsrj
  # I think `jenv` has to be installed first? and you might need
  # to test these on clean install and then configured later on?
  # please see: http://www.jenv.be

  package { 'jenv':
    ensure   => installed,
    provider => 'homebrew',
  }

  # package { 'java':
  #   ensure          => installed,
  #   provider        => 'brewcask',
  #   install_options => ['--no-binaries']
  # }

  # package { 'java7':
  #   ensure          => installed,
  #   provider        => 'brewcask',
  #   install_options => ['--no-binaries']
  # }

  # package { 'java6':
  #   ensure          => installed,
  #   provider        => 'brewcask',
  #   install_options => ['--no-binaries']
  # }

  # TODO: @devcsrj
  # Java must be installed first before
  # the packages below.

  # package { 'groovy':
  #   ensure   => 'latest',
  #   provider => 'homebrew',
  # }

  # package { 'maven':
  #   ensure   => 'latest',
  #   provider => 'homebrew',

  # package { 'tomcat':
  #   ensure   => 'latest',
  #   provider => 'homebrew',
  # }

  # TODO: @devcsrj
  # Only execute if Java environment is present
  # exec { 'install squirrel-sql':
  #   command => "java -jar ${squirrel}",
  # TODO: @devcsrj
  # please add a condition so that it doesn't execute if java is not available
  #   onlyif  => []
  # }
}
