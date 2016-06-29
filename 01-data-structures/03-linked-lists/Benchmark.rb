require_relative 'linked_list'
require 'benchmark'

list = LinkedList.new
bench_array = [1..10000]
bench_llist = LinkedList.new
#need to append 5000 items onto bench_llist

Benchmark.bm do |x|
    x.report("create new array") {new_array = [1..10000]}
    
    x.report("append to linked list") {
        i = 1
        until i === 10001
            list.add_to_tail(i)
            i = i + 1
        end
    }
    
    x.report("find item in array") {return new_array[4999]}
    x.report("find item in linked list") {
        current = list.@head
            until current.data = 5000
                current = current.next
            end
            return current
    }
    
    x.report("delete item from array") {new_array.delete_at(4999)}
    x.report("delete node from list") {list.delete(current)}
    
end