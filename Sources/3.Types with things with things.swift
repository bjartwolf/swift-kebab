enum Seasoning {
     case salt 
     case pepper
}

enum Food {
   case meat(Seasoning)
   case carrots(Int)
   case seawater
}

let somefood: Food = .meat(.salt)
let morefood: Food = .carrots(2) 
let notsureaboutthisone: Food = .seawater 


func salty(_ s: Food)  -> Bool { 
  switch s {
      case .meat(.salt):
         return true
      case .meat(.pepper):
          return false
      case .carrots(_):
         return false
      case .seawater:
         return true
  }
} 

salty(somefood)
salty(morefood)
salty(notsureaboutthisone)
