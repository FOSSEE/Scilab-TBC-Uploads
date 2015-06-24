clc
//initialisation of variables
p1=23//kg
p2=27.5//kg
p3=21.3//kg
p4=30//kg
p5=30//kg
a1=26//degree
a2=68//degree
a3=15//degree
a4=59//degree
a5=31//degree
//CALCULATIONS
Rx=p1*cosd(a1)-p2*cosd(a2)-p3*cosd(a3)-p4*cosd(a4)+p5*cosd(a5)//kg
Ry=-p1*sind(a1)-p2*sind(a2)-p3*sind(a3)+p4*sind(a4)+p5*sind(a5)//kg
//RESULTS
printf('the system is in equilibrium=% f kg',Rx)
printf('the system is in equilibrium=% f kg',Ry)
