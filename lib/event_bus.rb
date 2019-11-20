require_relative "event_dispacher"

module EventBus
  include EventDispacher

  def initialize
    super()
    @subscribes = []
  end

  def subscribe(event_name, command_handler)
    @subscribes << add_event_listener(event_name, command_handler.method(:execute))
  end
end
