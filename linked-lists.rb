class LinkedList
    def initialize(data)
        @head = Node.new(data)
    end
    
    def append(data)
        # adds a node to the end of the list
        index = @head
        while index.next_node != nil
            index = index.next_node
        end
        index.next_node = Node.new(data)
    end
    
    def prepend(data)
        # adds a node to the start of the list
        @head = Node.new(data, @head)
    end
    
    def size
        # returns total number of nodes
        index = @head
        size = 1 if index.next_node == nil
        size = 1
        while index.next_node != nil
            size += 1
            index = index.next_node
        end
        return size
    end
    
    def head
        # returns first node
        return @head.value
    end
    
    def tail
        # returns last node
        index = @head
        while index.next_node != nil
            index = index.next_node
        end
        return index.value
    end
    
    def at(index)
        #returns the node at given index
        current_node = @head
        index.times do
            current_node = current_node.next_node
        end
        return current_node.value
    end
    
    def pop
        #removes the last element from list
        index = @head
        prev = nil
        while index.next_node != nil
            prev = index
            index = index.next_node
        end
        prev.next_node = nil
    end
    
    def find(search)
        index = @head
        position = 0
        while index.next_node != nil
            index = index.next_node
            position += 1
            if index.value == search
                return position
            end
        end
        return "nil"
    end
    
    def to_s
        # returns the linked list as strings
        index = @head
        while index != nil
            print "( #{index.value} ) -> "
            index = index.next_node
        end
        print "nil"
    end
end

class Node  
    attr_accessor :value, :next_node
    
    def initialize(value = nil, next_node = nil)
        @value = value
        @next_node = next_node
    end
end