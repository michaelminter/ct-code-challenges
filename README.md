# README

All of the code challenges are available in this repository and can be run with the following commands in console:

1 
```ruby
str = "{key:[[value_1, value_2],[value_3, value4]], 5:10:00AM]}"
Conversion.string_to_hash(str)
```

2
```ruby
h = {"this" => [1,2,3,4,5,6], "that" => ['here', 'there', 'everywhere'], :other => 100}
c = Sample.new(h)
c.this #=> [1,2,3,4,5,6]
c.that #=> ['here', 'there', 'everywhere']
c.other #=> 100
```

3
```ruby
BinaryGap.solution(9) #=> 2
```

4

Rails Setup:

* Install RVM
* `brew install postgres`
* Will require dotenv configuration once service info is available.
* `rake db:create`

How to run the application

`rails s`

How to run the test suite

`rspec`
