# README
 
## MethodCounter object
* I can call any method I like on it, without getting an error
* Every time I call a method on it, the method returns the number of times I've called that method
* app/classes/method_counter.rb
  
  Example:

```
  rails c
  >>> mc = MethodCounter.new
  >>> mc.method_one
  => 1
  >>> mc.literally_any_other_method
  => 1
  >>> mc.method_one
  => 2
  >>> mc.count_this_one_too
  => 1
  >>> mc.method_one
  => 3
  >>> mc.method_one
  => 4
  >>> mc.count_this_one_too
  => 2
```

  Test:
  rspec app/classes/method_counter_spec.rb

  -------------------------
## Addition with Method Calls

* Add a "plus" method on the Integer class
* lib/ext/integer.rb

```
  >>> 1.plus(1)
  => 2
  >>> 1.plus(2)plus(3)
  => 6
```

