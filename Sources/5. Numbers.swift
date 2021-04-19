indirect enum Num { 
   case zero
   case onemorethan(Num)
}

let a: Num = Num.zero
let b: Num = .onemorethan(.zero)
let c: Num = .onemorethan(.onemorethan(.zero))

func plus(_ a: Num, _ b: Num) -> Num {
   switch a {
      case .zero :
         return b 
      case .onemorethan(let n):
         return .onemorethan(plus(n,b))
   }
}