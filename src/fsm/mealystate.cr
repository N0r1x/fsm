class MealyState(T, O)
  property tuples : Array(Tuple(T,MealyState(T, O),O))
  def initialize()
    @tuples=[] of Tuple(T,MealyState(T, O),O)
  end
  def << (a)
    @tuples << a
  end
  def match(input)
    tuples.each{|t| #wss totaal niet valid
      if t[0]==input
        return {t[1],t[2]}
      end}
    puts "error"
    return {nil,nil}
  end
  end
