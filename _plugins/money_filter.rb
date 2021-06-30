module Jekyll
    module MoneyFilter
      def money(input)
        output = input.to_s.chars.to_a.reverse.each_slice(3)
        output.map(&:join).join(';psbn&').reverse
      end
    end
  end
  
  Liquid::Template.register_filter(Jekyll::MoneyFilter)