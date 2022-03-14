IO.puts("Hello world")
x = 42
add = fn a,b -> a + b end
double = fn a -> add.(a, a) end
double.(x)

# conditionals
x = 13
case 13 do
  ^x -> IO.puts("#{x} Will match")
  _ -> IO.puts("#{x} Will not match")
end

case 1 do
  # this is to show that, errors in guards just make the match fail
  x when hd(x) -> IO.puts("Won't match")
  x -> IO.puts("Got #{x}")
end

# if x is greater than 0, return the sum, if not return the product
f = fn
  x,y when x > 0 -> x + y
  x,y -> x * y
end

IO.puts("x=1,y=2 f=#{f.(1,2)}")
IO.puts("x=-3,y=2 f=#{f.(-3,2)}")

#  cond : basically switch
cond do
  2+2 == 5 -> IO.puts("this won't be true")
  2*2 == 3 -> IO.puts("nor this")
  1+1 == 2 -> IO.puts("this will be true")
  true -> IO.puts("this is always be true") # the last else
end

# if and unless when you only need to check one condition
if true do
  IO.puts("this works")
end

unless true do
  IO.puts("this will never be true")
end

if nil do
  IO.puts("This won't be seen")
else
  IO.puts("this will be seen")
end

string = "Hello"
string_is_binary = is_binary(string)
IO.puts("string is binary? #{string_is_binary}")
