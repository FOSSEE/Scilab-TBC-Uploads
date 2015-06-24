//Example 2.13
//To determine area of triangle when 2 sides and an angle is given
clc,clear

c=7 //side oposite to vertex C
A=33 //angle at vertex A
b=5 //side opposite to vertex B

area_K = b*c*sind(A)/2
printf('Area of triangle ABC = %.2f square units',area_K)
