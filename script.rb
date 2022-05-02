dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, valid_substrings)
  valid_substrings.reduce(Hash.new(0)) do |output, substring|
    if word.downcase.scan(substring).length > 0
      output[substring] += word.downcase.scan(substring).length
    end
    output
  end
end

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)