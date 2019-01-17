class Exercise
  require 'set'
  def find(*sorted_list)
    check_first_integer(build_sum_set(sorted_list))
  end

  def build_sum_set(sorted_list)
    visited = Set.new
    sorted_list.each do |el|
      to_add = [el]
      visited.each do |prev_sum|
       to_add << prev_sum + el
      end
      to_add.each { |curr_sum| visited.add(curr_sum) }
    end
    visited
  end

  def check_first_integer(visited)
    count = 1
    while visited.include? count
      count += 1
    end
    count
  end
end
