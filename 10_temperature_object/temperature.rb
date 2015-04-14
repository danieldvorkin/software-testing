class Temperature
	
	def initialize(attrs)
		@temp = {:f => 32, :c => 0}
		@attrs = attrs
	end

	def to_fahrenheit
		if @attrs[:f]
			@attrs[:f]
		else
			((@attrs[:c].to_f * 1.8) + 32).round(1)
		end
	end

	def to_celsius
		if @attrs[:c]
			@attrs[:c]
		else
			((@attrs[:f].to_f - 32) / 1.8).round(1)
		end
	end

	def self.in_celsius(num)
		Temperature.new({:c => num})
	end

	def self.in_fahrenheit(num)
		Temperature.new({:f => num})
	end
end

class Celsius < Temperature
	def initialize(celsius)
    super(c: celsius)
  end
end

class Fahrenheit < Temperature
  def initialize(fahrenheit)
    super(f: fahrenheit)
  end
end