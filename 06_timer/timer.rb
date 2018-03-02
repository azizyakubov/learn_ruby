class Timer
  attr_accessor :seconds
  attr_accessor :minutes
  attr_accessor :hours
  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def time_string
    convert_all

    return (padded @hours) + ':'+(padded @minutes) +':' +(padded @seconds)
  end

  private

  def padded num
    if num > 9
      num.to_s
    else
      "0"+num.to_s
    end
  end

  def convert num
    display = 0
    while num >59
      num = num -60
      display = display +1
    end
    return display
  end


  def convert_all
    minutes = convert @seconds
    @minutes = @minutes + minutes
    @seconds = @seconds - (minutes*60)

    hours = convert @minutes
    @hours = @hours + hours
    @minutes = @minutes - (hours*60)
  end

end
