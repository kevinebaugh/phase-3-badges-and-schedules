def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  names.map{ |name| badge_maker(name) }
end

def assign_rooms(names)
  assignments = []
  names.each_with_index do |name, index|
    assignments.push("Hello, #{name}! You'll be assigned to room #{index + 1}!")
  end
  assignments
end

def printer(names)
  badges = batch_badge_creator(names)
  badges.each do |badge|
    puts badge
  end

  assignments = assign_rooms(names)
  assignments.each do |assignment|
    puts assignment
  end
end
