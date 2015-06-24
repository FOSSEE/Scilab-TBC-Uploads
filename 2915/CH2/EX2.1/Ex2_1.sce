//Example 2.1
//To solve the triangle when one side and 2 angles are given
clc,clear

a=10 //side opposite to vertex A
A=41 //angle at vertex A
C=75 //angle at vertex C

B=180- (A+C)
b=a*sind(B)/sind(A) //law of sines
c=a*sind(C)/sind(A) //law of sines
printf('Angle B is %.0f degrees\n length of side b is %.1f units\n length of side c is %.1f units',B,b,c)
