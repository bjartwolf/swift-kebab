indirect enum Num: Equatable { 
   case zero
   case onemorethan(Num)
}

let zero: Num = Num.zero
let one: Num = .onemorethan(.zero)
let two: Num = .onemorethan(.onemorethan(.zero))

func plus(_ a: Num, _ b: Num) -> Num {
   switch a {
      case .zero :
         return b 
      case .onemorethan(let n):
         return .onemorethan(plus(n,b))
   }
}

plus(one,one) 
/*
func mult (_ a: Num, _ b: Num) -> Num {
  match a with
  | Zero -> throw   
  | OneMoreThan n -> throw 
} 

mult(plus(b,b), c)
*/