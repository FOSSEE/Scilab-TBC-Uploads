//Ex 3.4 page 120

clc;
clear;
close;

R=10;// ohm
E=165;// V
//vt=330*sin(314*t)
Vm=330;// V
Vs=233;// V
f=314/2/%pi;// Hz
theta1=asin(E/Vm);// radian
//alpha2=%pi-alpha1;// radian
Io=1/2/%pi/R*(2*Vm*cos(theta1)-E*(%pi-2*theta1));// A
printf('(a) Average value of current = %.2f A',Io)
P=E*Io;// W
printf('\n (b) Power supplied to battery = %d W',P)
Ior=sqrt(1/2/%pi/R**2*((%pi-2*theta1)*(Vs**2+E**2)+Vm**2*sin(2*theta1)-4*Vm*E*cos(theta1)));// A
Pr=Ior**2*R;// W
printf('\n (c) Power dissipated in the resistor = %.2f W',Pr)
pf=(Pr+P)/Vs/Ior;// power factor
printf('\n (d) Power factor = %.4f',pf)
