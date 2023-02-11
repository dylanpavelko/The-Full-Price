module Jekyll
  module PrecisionFilter
    def precision(input, value=0)
      ("%.#{value}f" % input)
    end

    def blah(input)
      "test"
    end
  end
end

Liquid::Template.register_filter(Jekyll::PrecisionFilter)