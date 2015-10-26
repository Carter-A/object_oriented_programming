class Rover
  puts "Plateau Size"
  plateau_size = gets.chomp.split(' ')
  puts "Rover 1 inital position and direction"
  rover_1 = gets.chomp.split(' ')
  puts "Rover 1 move commands"
  rover_1_move = gets.chomp.split(//)
  puts "Rover 2 initial position and direction"
  rover_2 = gets.chomp.split(' ')
  puts "Rover 2 move commands"
  rover_2_move = gets.chomp.split(//)

plateau_x = plateau_size[0].to_i
plateau_y = plateau_size[1].to_i
rover_1_x = rover_1[0].to_i
rover_1_y = rover_1[1].to_i
rover_1_d = rover_1[2]
rover_2_x = rover_2[0].to_i
rover_2_y = rover_2[1].to_i
rover_2_d = rover_2[2]

rover_1_move.each do |x|
  if x == "L"
    case rover_1_d
    when "N" then rover_1_d = "W"
    when "E" then rover_1_d = "N"
    when "S" then rover_1_d = "E"
    when "W" then rover_1_d = "S"
    end
  elsif x == "R"
    case rover_1_d
    when "N" then rover_1_d = "E"
    when "E" then rover_1_d = "S"
    when "S" then rover_1_d = "W"
    when "W" then rover_1_d = "N"
    end
  elsif x == "M"
    case rover_1_d
    when "N"
      if rover_1_y == plateau_y
      else
        rover_1_y += 1
      end
    when "E"
      if rover_1_x == plateau_x
      else
        rover_1_x += 1
      end
    when "S"
      if rover_1_y == 0
      else
        rover_1_y -= 1
      end
    when "W"
      if rover_1_x == 0
      else
        rover_1_x -= 1
      end
    end
  end
end

rover_2_move.each do |x|
  if x == "L"
    case rover_2_d
    when "N" then rover_2_d = "W"
    when "E" then rover_2_d = "N"
    when "S" then rover_2_d = "E"
    when "W" then rover_2_d = "S"
    end
  elsif x == "R"
    case rover_2_d
    when "N" then rover_2_d = "E"
    when "E" then rover_2_d = "S"
    when "S" then rover_2_d = "W"
    when "W" then rover_2_d = "N"
    end
  elsif x == "M"
    case rover_2_d
    when "N"
      if rover_2_y == plateau_y
      else
        rover_2_y += 2
      end
    when "E"
      if rover_2_x == plateau_x
      else
        rover_2_x += 1
      end
    when "S"
      if rover_2_y == 0
      else
        rover_2_y -= 1
      end
    when "W"
      if rover_2_x == 0
      else
        rover_2_x -= 1
      end
    end
  end
end

puts "Rover 1's new coordinates are #{rover_1_x} #{rover_1_y} and it is facing #{rover_1_d}"
puts "Rover 2's new coordiantes are #{rover_2_x} #{rover_2_y} and it is facing #{rover_2_d}"
end
