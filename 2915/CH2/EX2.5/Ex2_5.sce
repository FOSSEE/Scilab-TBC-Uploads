//Example 2.5
//To solve the triangle when 2 sides and angle between them is given
clc,clear

c=5 //side oposite to vertex C
A=30 //angle at vertex A
b=4 //side opposite to vertex B

a = sqrt( b^2 + c^2 -2*b*c*cosd(A) ) //from law of cosines
printf('Length of a= %.2f units\n',a)
cos_B = (c^2+a^2-b^2)/(2*c*a) //from law of cosines
B=acosd(cos_B)
printf('Angle B=%.1f degrees\n',B)
C=180-(A+B)
printf('Angle C=%.1f degrees\n',C)
