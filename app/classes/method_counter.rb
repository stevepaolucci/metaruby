class MethodCounter
  attr_accessor :count

  def initialize()
    @count = {}
  end

  def method_missing(m, *args, &block)
    unless m == :define_method
      @count[m] = 1
      create_instance_method(m)
    end
    @count[m]
    # puts "Called #{m} with #{args.inspect} and #{block}"
  end

  def create_instance_method(m)
      self.class.send :define_method, m do
        @count[m] += 1
      end
  end

end
