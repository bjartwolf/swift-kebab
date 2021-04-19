enum Seasoning {
     case salt 
     case pepper
}

let pepper: Seasoning = .pepper
let salt = Seasoning.salt

let seasonings = [pepper, salt, .pepper, .salt]
let moarseasonings: [Seasoning] = [.salt, .pepper, .pepper, .salt]
seasonings


func salty(_ s: Seasoning)  -> Bool { 
  switch s {
     case .salt:
        return true
     case .pepper:
        return false 
  } 
} 

salty(salt)
salty(pepper)
