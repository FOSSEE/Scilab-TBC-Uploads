//Example 2.14
//To determine area of triangle when 3 angles and a side is given
clc,clear

A=115 //angle at vertex A
a=12 //side opposite to vertex A
B=25 //angle at vertex B
C=40 //angle at vertex C

area_K = a^2*sind(B)*sind(C)/(2*sind(A))
printf('Area of triangle ABC = %.2f square units',area_K)
