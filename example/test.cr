require "../src/fsm"
include Fsm
proc = ->(x : Int32, y : Int32){
  if (x==y)
    return {(x+1)%2,(x+1)%2}
  else
    return {y,y}
  end
}
mach=FiniteStateMealyMachine(Int32,Int32,Int32).new(0,proc)
state=mach.givestate
input=0
puts 0
while true
  input=state.match(input)
  puts input
end
