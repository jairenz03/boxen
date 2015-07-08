class people::mikhaila20 {
  require groups::shiva
  notify { 'Hello ${::boxen_user}': }

  package { 'adobe-creative-cloud':
    ensure          => installed,
    provider        => 'brewcask',
    install_options => ['--appdir=/Applications']
  }
}