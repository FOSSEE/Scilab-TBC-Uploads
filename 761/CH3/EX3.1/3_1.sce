clc;
// page no 105
// prob no 3.1
Erms_car=2; f_car=1.5*10^6;f_mod=500;Erms_mod=1;// given
// Equation requires peak voltages & radian frequencies
Ec=sqrt(2)*Erms_car; Em=sqrt(2)*Erms_mod;
wc=2*%pi*f_car; wm=2*%pi*f_mod;t=1;
// Therefore the equation is 
disp('v(t) = (2.83+1.41*sin(3.14*10^3*t))*sin(9.42*10^6*t) V');