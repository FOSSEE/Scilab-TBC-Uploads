clc
//initialisation of variables
a= 60 //degrees
a1= 15 //degrees
a2= 45 //degrees
w= 600 //rev/min
d= 2 //ft
r= 1 //ft
//CALCULATIONS
v= r*10*2*%pi
vr= sind(a)*v
vc= vr/2
pbyw= -(vc^2*2-vr^2)/(2*g)
//RESULTS
printf (' kinetic head change = %.f ft',pbyw)
