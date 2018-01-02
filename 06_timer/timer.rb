class Timer
  
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours   = @seconds/60/60
    minutes = @seconds/60%60
    seconds = @seconds%60

    "#{format(hours)}:#{format(minutes)}:#{format(seconds)}"
  end

  private
    def format(s)
      s.to_s.length < 2 ? "0#{s.to_s}" : s.to_s
    end

end
