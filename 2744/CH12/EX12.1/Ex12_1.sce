clear;
clc;
d = 3;//inches
HP = 120;//horse power
RPM = 180;
l = 25;//feet
N = 12*10^6;// lb/in^2
T = 33000*HP/(2*%pi*RPM);//  lb-feet
f_s = 16*T*12/(%pi*d^3);// lb/in^2
theta = f_s*l*12/(0.5*d*N);// radian
printf('The maximum intensity of shear stress induced is f_s = %.d lb/in^2',f_s);
printf('\n The angle of twist in degrees is theta = %.2f',theta*180/%pi);

//there is a minute error in the answer given in textbook.
