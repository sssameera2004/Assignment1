Assignment1
question2
def reverse(str):
    if len(str) == 0:
        return str
    else:
        return reverse(str[1:]) + str[0]
 str = "Edyoda"
 print("The original string is : ", end="")
print(str)
 
print("The reversed string(using recursion) is : ", end="")
print(reverse(str))
           or
def reverse(string):
    string = list(string)
    string.reverse()
    return "".join(string)
 
s = "Edyoda"
 
print("The original string  is : ", s)
 
print("The reversed string(using reversed) is : ", reverse(s))
 
