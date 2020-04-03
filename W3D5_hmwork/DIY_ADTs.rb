  class Stack
    attr_reader :array
    def initialize
        @array = []
      # create ivar to store stack here!
    end

    def push(el)
        self.array.push(el)
      # adds an element to the stack
    end

    def pop
        self.array.pop
      # removes one element from the stack
    end

    def peek
        self.array.last
      # returns, but doesn't remove, the top element in the stack
    end
  end


  class Queue
    attr_reader :array
      def initialize
          @array = []
      end

      def enqueue(el)
        self.array.push(el)
      end

      def dequeue
        self.array.shift
      end

      def peek
        self.array.first
      end
  end


  class Map
    attr_reader :array
      def initialize
          array = []
      end

      def set(key, value)
        idx = array.index {|pair|pari[0] == key}
        if idx
            array[idx][1] = value
        else
            array.push([key, value])
        end
        value
      end

      def get(key)
        array.each do |pair|
            if pair[0] == key
                return pair[1]
            end
        end
        nil
      end

      def delete(key)
        value = self.get(key)
        array.reject!{|pair|pair[0]==key}
        value
      end

      def show
        deep_dup(array)
      end

      def deep_dup(arr)
        arr.map do |ele|
            if ele.is_a?(Array)
                deep_dup(ele)
            else
                ele
            end
        end
      end
  end
