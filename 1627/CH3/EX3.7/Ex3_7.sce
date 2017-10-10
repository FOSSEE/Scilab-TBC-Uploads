clc
//initialisation of variables
w=5//m
w1=10//m
a=60//deg
y=9802//N/m^3
//CALCULATIONS
h=w+((w/2)*sind(a))//m
F=y*h*(w*w1)//kN
y2=w+w*sind(a)//m
Xp=w*[1-(1/3)*(w1+y2)/(w+y2)]//m
hc=w+Xp*sind(a)//m
//RESULTS
printf('The distance from to the center of pressure is=% f m',hc)
