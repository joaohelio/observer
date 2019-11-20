module EventDispacher
  def initialize
    @listeners = Hash.new([])
  end

  def add_event_listener(event_name, event_handler)
    @listeners[event_name] << event_handler
  end

  def nofity_observers(event_name, data)
    @listeners[event_name].each do |callback|
      callback.call(data)
    end
  end
end
