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
  end
end

Liquid::Template.register_filter(Jekyll::HelperFilter)