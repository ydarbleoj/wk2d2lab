## The iterators lab 

This lab builds on your implementation of SortedArray from [The Sorted Array Lab](https://github.com/wdi-sf-jan-2014/sorted_array). Make sure all your specs pass for that lab before starting on this one. The file sorted_array_spec.rb has some new specs that you need to satisfy. The specs for `SortedArray#map` onward do not exist in the spec file. Start with the spec for the behavior you want, and then write the least amount of code to get the spec to pass.

* Using one built in loop, a temporary variable, `Array#size`, `yield`, and no other iterators, your mission is to implement `SortedArray#each`. `SortedArray#each` needs to return the original array untouched. 

* When you are done, implement `SortedArray#map` on top of your shiny new `SortedArray#each` method. Keep in mind, that `SortedArray#map` should not modify the original array! Hint: Check out the `dup` method to figure out how to clone an existing array. 

* Implement `SortedArray#map!`, which modifies the original array.

* Implement `SortedArray#find`, which finds an element. The method should return `nil`.

Bonus

Implement `SortedArray#inject`. See if you can get it to work exactly
like `Array#inject`. 
