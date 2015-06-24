//7.21
clc;
r2s=0.32;
r1=0.64;
x2s=0.48;
x1=1.1;

V1=400/3^0.5;
Tstarting=3*V1^2*r2s/(2*%pi*25)*(1/((r1+r2s)^2+(x1+x2s)^2))
printf("\nStarting Torque=%.2f Nm",Tstarting)

disp('at 25 Hz')
x1=0.55;
x2s=0.24;
V1=0.5*400/3^0.5;
Tstarting=3*V1^2*r2s/(2*%pi*12.5)*(1/((r1+r2s)^2+(x1+x2s)^2))
printf("\nStarting Torque=%.2f Nm",Tstarting)