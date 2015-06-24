clc
H=12
a=20
b=20
G=115
c=30
Oa= asind(sind(a)/sind(c))-a+2*b
Ka= (cosd(a-b)*sqrt(1+(sind(c))^2-2*sind(c)*cosd(Oa)))/((cosd(b))^2*(cosd(a)+sqrt((sind(c))^2-(sind(a))^2)))
Pa=G*H^2*Ka/2
B= atand((sind(c)*sind(Oa))/(1-(sind(c)*cosd(Oa))))
printf('The active force Pa per unit length of the wall = %f lb/ft\n',Pa)
printf( ' The resultant will act a distance of 12/3 = 4 ft above the bottom of the wall with B = %f degree',B)
