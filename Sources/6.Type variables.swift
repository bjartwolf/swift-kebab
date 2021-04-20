enum Fruit { 
   case apple 
   case pear 
}

enum Meat {
   case beef
   case mutton
}

enum Food<A>{
   case plate(_:A)
}

let foo: Food<Meat> = .plate(.beef)
let bar = Food<Fruit>.plate(.apple)

func isBeef(_ plate: Food<Meat>) -> Bool {
   switch plate {
      case .plate(.beef):
         return true
      case .plate(.mutton):
         return false
   }
}

isBeef(.plate(.beef))