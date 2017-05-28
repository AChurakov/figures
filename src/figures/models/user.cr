class UserPayload
  JSON.mapping(
    type: String
    payload: User
  )
end

class User
  JSON.mapping(
    nickname: String,
    id: String | Nil,
    figure: Int32
  )
end
