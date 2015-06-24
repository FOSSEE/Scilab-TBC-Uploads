clc
clear

//INPUT DATA 
d=0.02;//diameter of the copper wire in cm
i=1;//current in amp
T=100;//maximum steady temperature in deg.C
r=2.1;//resistance of the wire in ohm cm
J=4.2;//mechanical equivalent of heat in j/cal
a=3.14*d^2/4;//area of the copper wire in sq.cm
a2=1;//area of the copper surface in sq.cm

//CALCULATIONS 
//we know that if r is the resistance of the wire through which current i flows,then the electrical energy spent =i^2*r j/sec
l=1/(2*3.14*d/2);//length corresponding to the area in cm
R=r*l/a;//resistance of the copper wirein ohm
w=R*a2^2;//work done in joule
h=w/J;//heat devoleped in cal

//OUTPUT
mprintf('the heat developed is %3f calories',h)
