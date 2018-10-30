#truth and false
```
nil counts as false
empty arrays & hashes count as true
```

#exceptions
```
come back to this later

raise and fail are the same
```

raise #returns $!, the most recent stored exception or returns RuntimeError if $! = nil

raise "custom error message" #returns a RuntimeError("custom error message")

#raise with parameters, 3rd is a callback
#executes code and returns custom message
begin
  raise ExceptionName, "custom message"
rescue ExceptionName => ex #hashmap
  #code gets run
ensure
  #code here always runs
end
