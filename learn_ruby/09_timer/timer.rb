class Timer
  attr_accessor :seconds

  def initialize(seconds = 0)
    @seconds = 0

  end

  def time_string
    seconds = @seconds

    # Do calculation to get proper time format
    if seconds > 3600
      hours = seconds / 3600
      seconds = seconds % 3600
    else
      hours = 0
    end

    if seconds > 60
      minutes = seconds / 60
      seconds = seconds % 60
    else
      minutes = 0
    end
    # hours = (hours >= 10)? hours.to_s : "0"+hours.to_s
    # minutes = (minutes >= 10)? minutes.to_s : "0"+minutes.to_s
    # seconds = (seconds >= 10)? seconds.to_s : "0"+seconds.to_s

    @time_string = [padding(hours), padding(minutes), padding(seconds)].join(":")


  end

  # Add "0" before string if number less or equal than 10
  def padding(num)
    num >= 10? num.to_s : "0" + num.to_s
  end

end
