require 'rubygems'
require 'bundler/setup'
require 'cora'
require 'siri_objects'
require 'sonos'

class SiriProxy::Plugin::Sonos < SiriProxy::Plugin
  def initialize(config)
    #if you have custom configuration options, process them here!
    @sonos = ::Sonos::System.new(::Sonos::Discovery.new(1,config[:ip_address]).topology)
    @speaker = @sonos.speakers.first
  end

  listen_for /stop sonos/i do
    @speaker.stop
    say "I stopped the Sonos for you"
  end

  listen_for /pause sonos/i do
    @speaker.pause
    say "I paused the Sonos for you"
  end

  listen_for /play sonos/i do
    @speaker.play
    say "I pressed play on the Sonos for you"
  end
end