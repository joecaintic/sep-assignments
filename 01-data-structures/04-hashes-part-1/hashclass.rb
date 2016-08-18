require_relative 'hash_item'

class HashClass
    
    
    def initialize(size)
        @items = Array.new(size)
    end
    
    
    def []=(key, value)
        if @items[index(key, @items.length)].nil?
            @items[index(key, @items.length)] = HashItem.new(key, value)
        elsif @items[index(key, @items.length)].key != key
            self.resize
            self[key] = value
        elsif @items[index(key, @items.length)].key === key && @items[index(key, @items.length)].value != value
            self.resize
            @items[index(key, @items.length)].value = value
        end
    end
    
    
    def [](key)
        if !@items[index(key, @items.length)].nil? and @items[index(key, @items.length)].key === key
            return @items[index(key, @items.length)].value
        end
    end
    
    
    def resize
        old_array = @items
        @items = Array.new(old_array.length * 2)
        old_array.each do |pair|
            unless pair.nil?
                if @items[index(pair.key, @items.length)].nil?
                    self[pair.key] = pair.value
                elsif @items[index(pair.key, @items.length)].key != key
                    self.resize
                    self[pair.key] = pair.value
                elsif @items[index(pair.key, @items.length)].key === key && @items[index(pair.key, @items.length)].value != value
                    self.resize
                    @items[index(pair.key, @items.length)].value = pair.value
                end
            end
        end
    end

    # Returns a unique, deterministically reproducible index into an array
    # We are hashing based on strings, let's use the ascii value of each string as
    # a starting point.
    def index(key, size)
        return key.sum % size
    end
    
    
    
    # Simple method to return the number of items in the hash
    def size
        return @items.length
    end
    
    
end