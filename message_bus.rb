module MessageBus
  def initialize
    @observers = {}
  end

  def add_event_listener(event_name, event_handler)
    @observers[event_name] ||= []
    @observers[event_name] << event_handler
  end

  def nofity_observers(event_name, data)
    (@observers[event_name] || []).each do |observer|
      observer.call(data)
    end
  end
end
