cmake_minimum_required(VERSION 3.20.0)

# single line comment

#[=[
multiline
comment
#[[
can be nested
#]]

#[====[
equals must match
#]====]

#]=]


#[=====[

match equals

#]=====]

##[==[ single line comment now due to extra #

#]==] also single line due to extra # above


message([[multiline
bracket
argument
]])

message([==[
  because we used two equal-signs "=="
  following is still a single argument:
  { "petsArray" = [["mouse","cat"],["dog"]] }
]==])
