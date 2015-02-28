module CubiePin
  class Pin

    def initialize(options)
      raise NotImplementedError if options.fetch(:direction) != :out
      @id = options.fetch(:pin)
      @direction = options.fetch(:direction)
      @enabled = false
    end

    def on
      raise CanNotOperateOnDisabledPinError unless enabled?
    end

    def off
      raise CanNotOperateOnDisabledPinError unless enabled?
    end

    def enabled?
      @enabled == true
    end

    def disabled?
      ! enabled?
    end

  end
end
