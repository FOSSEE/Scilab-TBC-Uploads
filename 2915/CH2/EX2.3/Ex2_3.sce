//Example 2.3
//To solve the triangle when 2 sides and opposite angle is given
clc,clear

a=5 //side oposite to vertex A
A=30 //angle at vertex A
b=12 //side opposite to vertex B

sin_B=(b/a)*sind(A) //law of sines
printf("sin(B)=%f.  But magnitude of sin(B) should be less than 1\nHence,there is no solution",sin_B)
