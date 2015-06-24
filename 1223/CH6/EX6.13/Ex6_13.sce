clear;
clc;
//Example 6.13
Vtn=0.8;
Vtp=-0.8;
Kn=80*10^-3;
Kp=40*10^-3;
//x=W/L
xn=15;
xp=10;
//lambda=y
yn=0.01;
yp=0.01;
Ibias=0.2;
gm=2*sqrt(Kn*xn*Ibias/2);
printf('\ntransconductance of the NMOS driver=%.3f mA/V^2\n',gm)
ron=1/(yn*Ibias);
printf('\noutput resistances=%.2f Kohm\n',ron)
Av=-gm*ron/2;
printf('\nsmall signal voltage gain=%.2f \n',Av)
