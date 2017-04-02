struct MealyState(I, T, O)
  property state : T, machine : FiniteStateMealyMachine(I, T, O)
  def initialize(t,m)
    @state=t
    @machine=m
  end
  def match(input : I)
    tuple=@machine.nextstate(input,@state)
    @state=tuple[0]
    return tuple[1]
  end
  end
