class Stack
    attr_reader :stack
    def initialize
        # create ivar to store stack here!
        @stack = []

    end

    def push(el)
      # adds an element to the stack 
        stack << el
    end

    def pop
      # removes one element from the stack
      @stack.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      stack[-1]
    end
  end








  class Queue
    attr_reader :queue

    def initialize
        @queue = []
    end


    def enqueue(el)
        @queue << el
    end


    def dequeue
        @queue.shift
    end


    def peek
        @queue[0]
    end


end






class Map
    attr_accessor :my_map

    def initialize
        @arr = []
    end


    def set(key, value)
        if !@arr.include?([key,value])
            @arr << [key,value]
        end

        # if @arr.include?([key,value])
        #     @arr.each_with_index do |subarr, i|
        #         @arr[i] = 
            
        #     end
        # end

        # @arr.each do |subarr|
        #     subarr.each_with_index do |el, i|
        #         if subarr[0] != key
        #             arr << [key,value]
        #             p 'added'
        #         end
        #     end

        # end
        
        
    end



    def get(key)
        @arr.each do |subarr|
            subarr.each do |el|
                if el == key
                    return subarr
                end
            end
        end
        return nil
    end


    def delete(key)
        @arr.each do |subarr|
            subarr.each do |el|
                if el == key
                    @arr.delete(subarr)
                    return true
                end
            end
        end
        return nil
    end


    def show
        @arr[0]
    end


end