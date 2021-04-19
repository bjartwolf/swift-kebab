enum Seasoning {
     case salt 
     case pepper
}

let pepper: Seasoning = .pepper
let salt = Seasoning.salt

let seasonings = [pepper, salt, .pepper, .salt]
let moarseasonings: [Seasoning] = [.salt, .pepper, .pepper, .salt]
seasonings
