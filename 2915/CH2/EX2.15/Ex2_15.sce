//Example 2.15
//To determine area of triangle when 3 sides are given
clc,clear

c=7 //side oposite to vertex C
a=5 //side opposite to vertex A
b=4 //side opposite to vertex B

s= (a+b+c)/2  //semi perimeter
area_K = sqrt(s*(s-a)*(s-b)*(s-c)) //using herons formula
printf('Area of triangle ABC = %.2f square units',area_K)
