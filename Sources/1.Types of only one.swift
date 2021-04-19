enum Salt { case salt }

let a = Salt.salt
let c: Salt = .salt

let salts = [a, c, .salt]
let moarssalts = [a, c]
salts

func salty(_ s: Salt)  -> Bool { 
  switch s {
     case .salt:
        return true
  } 
} 

salty(a)

// How many implementations of salty are there? 
// Can you put other things in the salts list? can you put numbers in the list?