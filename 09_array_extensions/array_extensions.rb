class Array

	def self.sum
  	puts "Class method"
	end

  def sum
  	output = 0
  	self.each do |n|
  		output += n
  	end
  	puts "Instance method"
  	output
  end

  def square
  	output = []
  	self.each do |n|
  		output << (n**2)
  	end
  	output
  end

  def square!
  	self.collect! do |n|
  		(n**2)
  	end
  end

end