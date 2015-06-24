//Example 2.10
//To solve the triangle when 2 sides and included angle is given
clc,clear

a=5 //side oposite to vertex a
b=3 //side opposite to vertex b
C=96 //angle at vertex C

ApB=180-C //A + B
//using law of tangents
 AmB =2* atand(  tand(ApB/2)*(a-b)/(a+b) )  //A-B

//solving for A and B using AmB and ApB
A= (AmB + ApB)/2
B=  ApB - A

c=a*sind(C)/sind(A) //law of sines
printf('Angle A= %.1f degree\nAngle B=%.1f degree\nlength of c=%.2f units',A,B,c)
