//clear//
//Caption:Program to determine the instanteous field of a wave
//Example12.2
//page400-401
clc;
t = sym('t');
z = sym('z');
Ezt1 =sym('100*cos(-0.21*z+2*%pi*1e07*t)');
Ezt2 = sym('20*cos(-0.21*z+30+2*%pi*1e07*t)');
ax = sym('ax');
ay = sym('ay');
Ezt = Ezt1*ax+Ezt2*ay;
disp(Ezt,'The real instantaneous field Ezt =')
//Result
//The real instantaneous field Ezt =   
//  100*ax*cos(0.21*z-2.0E+7*%pi*t)+20*ay*cos(0.21*z-2.0E+7*%pi*t-30) 
//
