require_relative 'MyEnumerable'

class MyList
  include MyEnumerable

  def initialize(list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

my_list = MyList.new([1, 2, 3, 4])

my_list.all? { |num| num > 0 } #=> true
my_list.all? { |num| num > 2 } #=> false

my_list.any? { |num| num > 3 } #=> true
my_list.any? { |num| num < 0 } #=> false

my_list.filter { |num| num.even? } #=> [2, 4]
