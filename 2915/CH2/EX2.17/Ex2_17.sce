//Example 2.17
//To find radius of circumscribed circle for triangle ABC
clc,clear

c=5//side oposite to vertex C
a=3//side opposite to vertex A
b=4//side opposite to vertex B

cos_A = (c^2+b^2-a^2)/(2*c*b) //from law of cosines
A= acosd(cos_A)
diameter=(a/sind(A))
radius = diameter/2
printf('Radius of circumscribed circle = %.1f units \n',radius)
printf('\nNote :\n Diameter is same as AB i.e. c... So centre of circle is mipoint of AB')
