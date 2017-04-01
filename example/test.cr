require "../src/fsm"
include Fsm
filename="example/test"
file = File.open(filename)
temp_array=[] of Tuple(String,String,String,String)
file.each_line {|line|
  words=line.split(" ")
  if(words.size == 4)
    temp_array << { words[0], words[1], words[2], words[3] }
  else
    puts "Too many words!"
  end}
tuplelist=[] of Tuple(String,Int32,String,Int32)
temp_array.each{|t|
  tuplelist << {t[0],t[1].to_i,t[2],t[3].to_i}
}
test=FiniteStateMachine(Int32,Int32).new(tuplelist)
a=0
while true
  a=test.cycle(a)
  puts a
  sleep 0.5
end
