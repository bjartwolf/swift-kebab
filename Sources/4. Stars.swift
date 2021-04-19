enum Meza {
     case shrimp
     case calamari 
     case escargots 
     case hummus 
}

enum Main {
     case steak  
     case ravioli 
     case chicken 
     case eggplant 
}

Meza.shrimp
Main.steak

let twocourses: (Meza, Main) = (.calamari, .chicken)

(Meza.shrimp, Main.steak)

enum Salad {
   case green
   case cucumber
   case greek
}

enum Dessert{
   case sundae 
   case mousse
   case torte
}

enum Dinner {
   case threecourse(Meza, Main, Dessert)
   case fourcourse(Meza, Salad, Main, Dessert)
}

let aDinner: Dinner = .fourcourse(.escargots, .green, .steak, .mousse) 
let anotherDinner: Dinner = .threecourse(.shrimp, .ravioli, .torte)

func vegetarian(_ d: Dinner) -> Dinner {
   switch d {
      case .threecourse(let me, .steak, let de):
         return .threecourse(me, .eggplant, de)
      case .threecourse(let me, .chicken, let de):
         return .threecourse(me, .eggplant, de)
      case .threecourse(let me, let ma, let de):
         return .threecourse(me, ma, de)
      case .fourcourse(let me, let sa, .steak, let de):
         return .fourcourse(me, sa, .eggplant, de)
      case .fourcourse(let me, let sa, .chicken, let de):
         return .fourcourse(me, sa, .eggplant, de)
      case .fourcourse(let me, let sa, let ma, let de):
         return .fourcourse(me, sa, ma, de)
   }
}

vegetarian(aDinner)
vegetarian(anotherDinner)

// Can we shorten the vegetarian function?
// Do we need to match that many patterns?
// Can me make a helper function