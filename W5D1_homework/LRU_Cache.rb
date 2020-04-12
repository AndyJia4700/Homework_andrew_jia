class LRUCache
    def initialize(size)
        @size = size
        @cache = []
    end

    def count
        @cache.size
    end

    def add(el)
        if self.count >= @size
            @cache.shift
            @cache << el
        elsif @cache.include?(el)
            @cache.delete(el)
            @cache << el
        else
            @cache << el
        end
    end

    def show
        p @cache
        nil
    end

    private
end