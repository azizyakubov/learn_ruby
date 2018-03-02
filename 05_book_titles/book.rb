class Book
  attr_reader :title

  def title=(phrase)
    arr= phrase.split(" ")
    output = ""
    for i in 0...arr.length
      if i == 0
        output= arr[0].capitalize
      elsif (arr[i]=='the' || arr[i]=='and'||arr[i]=='or'||arr[i]=='for'||arr[i]=='over'||arr[i]=='in'||arr[i]=='of'||arr[i]=='a'||arr[i]=='an')
        output = output+ " "+ arr[i]
      else
        output= output+ " "+ arr[i].capitalize
      end
    end
    @title=output
  end
end
