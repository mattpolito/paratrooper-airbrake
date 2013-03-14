require "paratrooper-airbrake/version"
require 'paratrooper/notifier'

module Paratrooper
  module Airbrake
    class Notifier < Paratrooper::Notifier
      def teardown(options = {})
        `airbrake deploy`
      end
    end
  end
end
