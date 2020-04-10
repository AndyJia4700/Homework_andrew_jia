
class Array
    def sluggish_octopus
        count = {}
        (0...self.length).each do |i|
            (i...self.length).each do |j|
                if i < j && self[i].length < self[j].length
                    count[self[j]] = self[j].length
                end
            end
        end
        count.sort_by{|k,v|v}.last[0]
    end

    def quick_sort_fish
        return self if self.size < 2
        prc ||= Proc.new{|a,b|a.length<=>b.length}
        pivot = self.first
        left = self[1..-1].select{|el|prc.call(el, pivot)==-1}
        right = self[1..-1].select{|el|prc.call(el, pivot)!=-1}
        left.quick_sort_fish + [pivot] + right.quick_sort_fish
    end

    def dominant_octopus
        self.quick_sort_fish.last
    end

    def clever_octopus
        sort = {}
        (0...self.length).each do |i|
            sort[self[i]] = self[i].length
        end
        sort.sort_by{|k,v|v}.last[0]
        
    end

end

array = Array.new(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
# p array.sluggish_octopus
# p array.dominant_octopus
# p array.clever_octopus


class Array
    def slow_dance(tile)
        (0...self.length).each do |i|
            return i if self[i] == tile
        end
    end

    # def hash_dance
    #     hash = {}
    #     (0...self.length).each do |i|
    #         hash[self[i]] = i
    #     end
    #     hash
    # end

    def constant_dance(tile, hash)
        hash[tile]
    end
    
end

hash = {"up"=>0, "right-up"=>1, "right"=>2, "right-down"=>3, "down"=>4, "left-down"=>5, "left"=>6, "left-up"=>7}
tiles_array = Array.new(["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ])
# p tiles_array.slow_dance("right")
# p tiles_array.hash_dance
# p tiles_array.constant_dance("right-down", hash)