## The iterators lab 

This lab builds on your implementation of SortedArray from [The Sorted Array Lab](https://github.com/wdi-sf-jan-2014/sorted_array). Make sure all your specs pass for that lab before starting on this one.

* Using one built in loop, a temporary variable, `Array#size`, `yield`, and no other iterators, your mission is to implement `SortedArray#each`. `SortedArray#each` needs to return the original array untouched. 

* When you are done, implement `SortedArray#map` on top of your shiny new `SortedArray#each` method. Keep in mind, that `SortedArray#map` should not modify the original array! Hint: Check out the `dup` method to figure out how to clone an existing array. 

* Implement `SortedArray#map!`, which modifies the original array.

* Implement `SortedArray#find`, which finds an element. The method should return `nil`.

