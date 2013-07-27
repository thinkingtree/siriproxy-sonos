require 'cora'
require 'siri_objects'
require 'sonos'

class SiriProxy::Plugin::Sonos < SiriProxy::Plugin
  def initialize(config)
    #if you have custom configuration options, process them here!
  end

  listen_for /stop sonos/i do
    say "Sonos stopped"
  end
end