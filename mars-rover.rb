class Rover
  attr_accessor :name, :pos_x, :pos_y, :direction

  def initialize(name, pos_x, pos_y, direction)
    @name = name
    @pos_x = pos_x
    @pos_y = pos_y
    @direction = direction
  end

  def move(args)
    args.each do |x|
      if x == "L"
        case self.direction
        when "N" then self.direction = "W"
        when "E" then self.direction = "N"
        when "S" then self.direction = "E"
        when "W" then self.direction = "S"
        end
      elsif x == "R"
        case self.direction
        when "N" then self.direction = "E"
        when "E" then self.direction = "S"
        when "S" then self.direction = "W"
        when "W" then self.direction = "N"
        end
      elsif x == "M"
        case self.direction
        when "N"
          if self.pos_y == $p_size_y
          else
            self.pos_y += 1
          end
        when "E"
          if self.pos_x == $p_size_x
          else
            self.pos_x += 1
          end
        when "S"
          if self.pos_y == 0
          else
            self.pos_y -= 1
          end
        when "W"
          if self.pos_x == 0
          else
            self.pos_x -= 1
          end
        end
      end
    end
  end
end
#Gets the plateau size and assigns variables to each perameter
puts "Plateau Size"
p_size = gets.chomp.split(' ')
$p_size_x = p_size[0].to_i
$p_size_y = p_size[1].to_i


#gets rover 1's inital position
puts "Rover 1 initial position and direction(x, y, NESW)"
r_1 = gets.chomp.split(' ')
r_1_x = r_1[0].to_i
r_1_y = r_1[1].to_i
r_1_d = r_1[2]

#get rover 1's move commands
puts "Rover 1's move commands"
r_1_m = gets.chomp.split(//)

#gets rover 2's initial position
puts "Rover 2's initial position and direction(x, y, NESW)"
r_2 = gets.chomp.split(' ')
r_2_x = r_2[0].to_i
r_2_y = r_2[1].to_i
r_2_d = r_2[2]

#get rover 2's move commands
puts "Rover 2's move commands"
r_2_m = gets.chomp.split(//)

#initialize both rovers
rover1 = Rover.new("rover1", r_1_x, r_1_y, r_1_d)
rover2 = Rover.new("rover2", r_2_x, r_2_y, r_2_d)

#move the rovers
rover1.move(r_1_m)
rover2.move(r_2_m)

#print their final positions
puts "Rover 1's final position is #{rover1.pos_x} #{rover1.pos_y} and is facing #{rover1.direction}"
puts "Rover 2's final position is #{rover2.pos_x} #{rover2.pos_y} and is facing #{rover2.direction}"
