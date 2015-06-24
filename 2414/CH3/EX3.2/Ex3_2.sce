clc;
clear all;
//chapter 3
//page no 76
//example 3.2
//plot for impulse function
t=-2:.001:2;
vt=[zeros(-2:.001:0-.001) 1 zeros(0+.001:.001:2)]     //impulse function matrix
clf
subplot(211)
plot2d(t,vt,[2],rect=[-2,0,2,2])
a=gca(); // Handle on axes entity
a.x_location = "origin"; 
a.y_location = "origin";

xtitle('(a) Unit Impulse function','t','v(t)')

//plot for amplitude spectum
f=-2:.001:2;
Vf=[ones(-2:.001:2)]
subplot(212)
plot2d(f,Vf,[5])
a=gca(); // Handle on axes entity
a.x_location = "origin"; 
a.y_location = "origin";

xtitle('(b) Amplitude spectrum','f','V(f)')
xgrid
