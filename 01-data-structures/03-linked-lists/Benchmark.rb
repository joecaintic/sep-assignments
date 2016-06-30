require_relative 'linked_list'
require 'benchmark'

list = LinkedList.new
i = 2
list.head = Node.new("1")
until i === 10001
    list.add_to_front(Node.new("#{i}"))
    i = i + 1
end

new_array = (1..10000).to_a


Benchmark.bm do |x|
    x.report("create new array") {bench_array = (1..10000).to_a}
    x.report("append to linked list") {
        bench_list = LinkedList.new
        i = 2
        bench_list.head = Node.new("1")
        until i === 10001
            bench_list.add_to_front(Node.new("#{i}"))
            i = i + 1
        end
    }
    
    x.report("find item in array") {new_array[4999]}
    x.report("find item in linked list") {
        current = list.head
        until current.data === "10000"
                if current.data === "5000"
                    break
                else
                    current = current.next
                end
        end
        
    }
    
    x.report("delete item from array") {new_array.delete_at(4999)}
    x.report("delete node from list") {
        current = list.head
        until current.data === "10000"
            if current.data === "5000"
                list.delete(current)
                break
            else
                current = current.next
            end
        end
    }
    
end