clc;
//5.6
r3=300;
r2=1500;
r1=15;
R=(r3/r2)*r1;
l=4000;
r3=180;
d=(2*l/R)*(R*r2-r3*r1)/(r1+r2);
printf("Distance of the fault=%.2fm",d)