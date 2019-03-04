# March 3rd 2016
# Mamoutou Sangare V00010526
# This program takes three integer inputs;it prints them and the median number
def middle(x, y, z):
 return sorted([x, y, z])[1]
num1 = input("Enter First number: ")
num2 = input("Enter Second number: ")
num3 = input("Enter Third number: ")
median = middle (num1,num2,num3)
print "The three numbers entered:", num1 , num2 , num3
print "The median: ", median

