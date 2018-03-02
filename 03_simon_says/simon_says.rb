#write your code here

def echo(phrase)
  phrase.to_s
end

def shout(phrase)
  phrase.upcase
end

def repeat(phrase, n=2)
  ([phrase]*n).join(" ")
end

def start_of_word (phrase, n=1)
  phrase[0...n] #tripple dot notation to indicate up to but not including final n
end

def first_word (phrase)
  phrase.split(" ")[0]
end

def titleize (phrase)
  arr= phrase.split(" ")
  output = ""
  for i in 0...arr.length
    if i == 0
      output= arr[0].capitalize
    elsif (arr[i]=='the' || arr[i]=='and'||arr[i]=='or'||arr[i]=='for'||arr[i]=='over')
      output = output+ " "+ arr[i]
    else
      output= output+ " "+ arr[i].capitalize
    end
  end
  output
end
