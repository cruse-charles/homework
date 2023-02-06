class LRUCache
    def initialize(size)
      @size = size
      @map = []
    end
  
    def count
      @map.count
    end
  
    def add(el)
      if @map.include?(el)
        @map.delete(el)
        @map << el
      elsif count >= @size
        @map.shift
        @map << el
      else
        @map << el
      end
    end
  
    def show
      p @map
    end
  end
  