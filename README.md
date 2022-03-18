# Sub Strings

Implement a method `#substrings` that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

```ruby
> dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

=> ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

> substrings("below", dictionary)

=> { "below" => 1, "low" => 1 }
```

## Source

The Odin Project (https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-programming/lessons/sub-strings)
