module ProtocolBuffers

  class Service

    def self.endpoint(meth, itype, otype)
      define_method(meth) { |input| remote_send(meth, input) }
    end

    def self.dial(addr)
      new(addr).dial
    end

    def initialize(address)
      @address = address
    end

    def dial
      raise NotImplementedError
      self
    end

    def remote_send(endpoint, payload)
      raise NotImplementedError
    end

  end
end
