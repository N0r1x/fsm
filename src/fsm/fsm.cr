class FiniteStateMachine(T, O)
  #todo: functie die String->T doet en String->O : gevonden Proc
  property states : Array(MealyState(T, O)) , current : MealyState(T, O)
  def initialize(list : Array(Tuple(String, T, String, O)) )
    idlist=getids(list)
    @states=Array(MealyState(T, O)).new(idlist.size){MealyState(T, O).new}
    fillstates(list,idlist)
    @current=@states[0].not_nil! #if states[0] is nil raise
  end
  def cycle(input)
    temp=@current.match(input)
    @current=temp[0].not_nil!
    return temp[1]
  end
  private def fillstates(list,idlist)
    list.each{|t|
      keya=idlist.index(t[0]).not_nil!
      keyb=idlist.index(t[2]).not_nil!
      @states[keya]<<{t[1],@states[keyb],t[3]}
    }
  end
  private def getids(list)
    idlist=[] of String
    list.each{|t|
      if !idlist.includes?(t[0])
        idlist<<t[0]
      end}
    return idlist
  end
end
