def sluggish_octopus(fisharr)
    fish.each_with_index do |f1, i1|
        max = true
        fish.each_with_index do |f2, i2|
            if i2 > i1
                if fish2.length > fish1.length
                    max = false
                end
            end
        end
        return fish1 if max == true
    end
end

p sluggish_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
'fiiiissshhhhhh'])


def merge_sort(&prc)
    prc ||= Proc.new {|x,y| x<=>y}

    return self if self.length < 2

    mid = self.length/2
    left = self[0...mid]
    right = self[mid..-1]

    Array.merge(left.merge_sort(&prc), right.merge_sort(&prc), &prc)
end

def self.merge(left, right, &prc)
    holder = []

    until left.empty? || right.empty?
        if prc.call(left.first, right.first) < 0
            holder << left.first
        else
            holder << right.first
        end
    end
    holder + left + right
end

p ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
 'fiiiissshhhhhh'].merge_sort


def clever_octopus(fisharr)
    max = fisharr[0]

    fisharr.each do |fish|
        if fish.length > max.length
            max = fish
        end
    end

    max
end

p clever_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
'fiiiissshhhhhh'])

def slow_dance(target, arr)
    tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

    arr.each_with_index do |tile, i|
        return i if tile == target
    end
end

slow_dance("up", tiles_array)
#> 0

slow_dance("right-down", tiles_array)
#> 3

def fast_dance(target, hash)
    hash[target]
end

hash = {
    "up" => 0, "right-up" => 1, "right"=> 2, "right-down" => 3, "down" => 4, "left-down" => 5, "left" => 6, "left-up" => 7
}

fast_dance("up", hash)
#> 0

fast_dance("right-down", hash)
#> 3