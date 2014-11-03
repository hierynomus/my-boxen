class people::hierynomus::repos {
  $repo = hiera('hierynomusCode')

  repository { 'scannit':
    path => "${repo}/scannit",
    source => "hierynomus/scannit",
  }
}