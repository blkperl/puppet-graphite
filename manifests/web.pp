# = Class: graphite::web
#
# Installs the graphite webfontend.
#
# == Actions:
#
# Installs packages for graphite web frontend.
#
# == Requires:
#
# Running web server.
#
# == Todo:
#
# * Update documentation
#
class graphite::web ( $manage_http, $time_zone, $vhostname ){
  require graphite::params
  include graphite::web::package

  class {'graphite::web::config':
    time_zone => $time_zone,
  }
  if $manage_httpd {
    include graphite::web::service
  }
}
