module Jekyll
  module HelperFilter
    def precision(input, value=0)
      ("%.#{value}f" % input)
    end

    def length_of_time(input)
      if input
	      if input > 365
    	  	return (input/365).round(2).to_s + "&nbsp;years"
    	  else
      		return input.round(2).to_s + "&nbsp;days"
      	end
      end
    end

    def calculate_break_even_days(input, amount, concurrent_units, base, annual_use, uses_per_unit)
      breakeven_uses = amount * concurrent_units / base 
      breakeven_days = breakeven_uses / annual_use

      leaf_image = ""
      if(uses_per_unit * concurrent_units > breakeven_uses)
        leaf_image = "<img src='/assets/green-leaf-4903.svg' alt='Green Leaf' height='18'/>"
      end

      return leaf_image + length_of_time(breakeven_days)
    end
  end
end

Liquid::Template.register_filter(Jekyll::HelperFilter)