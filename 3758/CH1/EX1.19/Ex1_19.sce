clc;
h=0.25; //height of capillary rise in cm
t=0.0075*10^-2; //surface tension in kg/cm
s=1; //specific gravity of water
w=1000*10^-6; //soecific weight of water in kg/cm^3
r=(2*t)/(s*w*h); //calculating radius of glass tube
d=2*r; //diameter of glass tube
printf('diameter of glass tube is %f cm',d);
