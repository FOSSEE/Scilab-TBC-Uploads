clc;
d=2; //diameter of glass tube in mm
r=(d/2)*10^-1 // radius of glass tube in cm
T=0.0075*10^-2; // surface tension of water in kg/cm
T1=0.052*10^-2; // surface tension of mercury in kg/cm
// calculating capillary rise for water
w=1000*10^-6; // specific weight of water in kg/cm^3
s=1; //specific gravity of water 
theta=0; // angle of contact between liquid and tube
h=(2*T*cos(theta))/(s*w*r); // calculating height of capillary rise
printf('height of capillary rise in water is %f cm\n',h);
// calculating capillary rise for mercury
s=13.6; //specific gravity of mercury
theta=130; // angle of contact between mercury and tube
h=(2*T1*cos(theta*(3.14/180)))/(s*w*r); // calculating height of capillary rise
printf('height of capillary rise in mercury is %f cm/n ',h);
disp('negative sign indicates decrease in height of mercury');
