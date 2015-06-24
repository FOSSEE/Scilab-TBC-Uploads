//Example 2.6
//To solve the triangle when 3 sides are given
clc,clear

c=4 //side oposite to vertex C
a=2 //side opposite to vertex A
b=3 //side opposite to vertex B

cos_B = (c^2+a^2-b^2)/(2*c*a) //from law of cosines
B=acosd(cos_B)
printf('Angle B=%.1f degrees\n',B)
cos_C = (b^2+a^2-c^2)/(2*b*a) //from law of cosines
C=acosd(cos_C)
printf('Angle C=%.1f degrees\n',C)

A=180-(C+B)
printf('Angle A=%f degrees',A)
