class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) {Array.new([])}
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_with_index do |cup, i|
      if i != 6 && i != 13
        4.times do 
          cup << :stone
        end
      end
    end

  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup'if start_pos > 12 || start_pos < 0 || start_pos == 6
    raise 'Starting cup is empty' if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    hand = @cups[start_pos]
    @cups[start_pos] = []

    cup_i = start_pos

    until hand.empty?
      cup_i += 1
      cup_i = 0 if cup_i == 13

      if cup_i == 6 && current_player_name == @name1
        @cups[cup_i] << hand.pop
      elsif cup_i == 13 && current_player_name == @name2
        @cups[cup_i] << hand.pop
      else
        @cups[cup_i] << hand.pop
      end

    end

    render
    next_turn(cup_i)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].count == 1
      :switch
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all? {|cup| cup.empty?} || @cups[7..12].all? {|cup| cup.empty?}
  end

  def winner
    p1_count = @cups[6].count
    p2_count = @cups[13].count

    if p1_count == p2_count
      :draw
    elsif p1_count > p2_count
      @name1
    else
      @name2
    end

  end
end
