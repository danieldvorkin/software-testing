def ctof(var)
	((var.to_f * 1.8) + 32).round(1)
end

def ftoc(var)
	((var.to_f - 32) / 1.8).round(1)
end
