require_relative "piglatin/version"

def format_cases(word, created_word)
  created_word.capitalize! if word[0].is_one_upper?
  created_word.upcase! if word.all_upper?
  created_word
end

def split_till_first_vowel(word)
  word.split(/(?=[aeiouAEIOU])/i, 2)
end

def extract_words(statement)
  statement.scan(/[\w']+/)
end

class String
  def pig_latin_convert
    vowels_and_sounds = %w[a e i o u A E I O U honest hour heir honour HONEST HOUR HEIR HONOUR]
    given_word = self.dup
    statement = {}
    # words = line.split(' ')
    words = extract_words(given_word)
    words.each do |word|
      if word.start_with?(*vowels_and_sounds)
        # vowels and vowel-sounding words
        statement[word] = format_cases(word, "#{word}way")
      else
        # consonant sounding word
        prefix, suffix = split_till_first_vowel(word)
        statement[word] = format_cases(word, "#{suffix}#{prefix}ay")
      end
    end
    words.each do |st|
      given_word.gsub!(st, statement[st])
    end
    given_word
  end

  def is_one_upper?
    !!self.match(/\p{Upper}/)
  end

  def all_upper?
    self == self.upcase
  end
end
