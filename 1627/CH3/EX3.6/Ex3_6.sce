clc
//initialisation of variables
p=0.5//m
w=3//m
t=20//deg
p1=3/2//m
ht=0
y=9802//N/m^3
p=2/3//m
//CALCULATIONS
hb=w*sind(t)//m
h=(ht+hb/2)//m
F=y*h*p*w//N
Xp=p*w//m
//RESULTS
printf('The total force on the plane and distance to the center of pressure is=% f m',Xp)
