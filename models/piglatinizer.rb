class PigLatinizer
    attr_accessor :words

    def piglatinize(words)
        words.split.collect do |word|
            if first_letter_vowel?(word)
            "#{word}way"
            else
                first = "#{word.chars.shift(index_of_first_vowel(word)).join}ay"
                last = word.chars.pop(word.length-index_of_first_vowel(word)).join
                "#{last}#{first}"
            end
        end.join(" ")
    end
     
    def first_letter_vowel?(word)
        word.downcase.chars.first.match?(/[aeiou]/)
    end

    def index_of_first_vowel(word)
        first_vowel = word.downcase.match(/[aeiou]/)[0]
        word.index(first_vowel)
    end

end