module MyEnumerable
  def all?(&block)
    each { |element| return false unless yield(element) }
    true
  end

  def any?(&block)
    each { |element| return true if yield(element) }
    false
  end

  def filter(&block)module MyEnumerable
    def all?(&block)
      each { |element| return false unless yield(element) }
      true
    end
  
    def any?(&block)
      each { |element| return true if yield(element) }
      false
    end
  
    def filter(&block)
      # Bug: result is declared outside the method, making it shared among invocations
      @result ||= []
      each { |element| @result << element if yield(element) }
      @result
    end
  end
  
    result = []
    each { |element| result << element if yield(element) }
    result
  end
end
