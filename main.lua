function print_r(arr, indentLevel)
    local str = ""
    local indentStr = "#"

    if(indentLevel == nil) then
        print(print_r(arr, 0))
        return
    end

    for i = 0, indentLevel do
        indentStr = indentStr.."\t"
    end

    for index,value in pairs(arr) do
        if type(value) == "table" then
            str = str..indentStr..index..": \n"..print_r(value, (indentLevel + 1))
        else 
            str = str..indentStr..index..": "..value.."\n"
        end
    end
    return str
end
  
  N = 4
array = {-10,8,1,2,4,3,5,7,9}
car = {name = "Bugatti Veyron", speed = 400 }
square = {}
odd = {}
  
  print("Practice loops: "..N)
  for var = 1, N do
    print(var)
end  
print("")
  for var = 1, N, 2 do
    print(var)
end
print("")
  for var = N, 1, -1 do
    print(var)
end
print("")
print("Practice arrays: ")
  print_r(array)
sum = 0
  max, max_index = array[1], 0
for index, value in ipairs(array) do
	sum = sum + value
    if max <= value then
      max = value
      max_index = index
    end
    if ((value+1)%2) == 0 then
      table.insert(odd, value)
    end 
end
print(sum)
  print(max_index)
print("")
    for var = 1, N do
    table.insert(square, var*var)
end  
print_r(square)

  print(odd[N])
  print("")
  print("Practice arrays vs. tables: ")
print_r(car)
  print(#array)
  print("")
  print(#car)