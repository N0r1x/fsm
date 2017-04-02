require "./mealystate.cr"
class FiniteStateMealyMachine(I,T,O)
  property function : Proc( I,T,Tuple(T,O)), startingstate : T
  def initialize( startingstate : T, proc : Proc(I,T,Tuple(T,O)))
    @function=proc
    @startingstate=startingstate
  end
  def givestate()
    return MealyState(I,T,O).new(@startingstate,self)
  end
  def setstartingstate(state : T)
    @startingstate=state
  end
  def nextstate(input, state)
    return function.call(input,state)
  end
end
