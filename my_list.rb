require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

#=> Verifying the solution
my_list = MyList.new([1, 2, 3, 4])

my_list.all?(&:positive?) #=> true
my_list.all? { |num| num > 2 } #=> false

my_list.any? { |num| num > 3 } #=> true
my_list.any?(&:negative?) #=> false

my_list.filter(&:even?) #=> [2, 4]
