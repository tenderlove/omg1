require 'strscan'

class MyParser
  class Tokenizer
    def initialize string
      @ss = StringScanner.new string
    end

    def next_token
      return if @ss.eos?

      case
      when text = @ss.scan(/a/)
        [:A, text]
      when text = @ss.scan(/b/)
        [:B, text]
      else
        text = @ss.scan(/./)
        [text, text]
      end
    end
  end

  def parse string
    @tok = Tokenizer.new string
    do_parse
  end

  def next_token
    @tok.next_token
  end
end
