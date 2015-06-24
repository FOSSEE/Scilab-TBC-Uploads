
//example 5.7
//page 204
clc; funcprot(0);
//initialisation of variable
V1=40;//velocity
Vp=20;//velocity
pi=3.14;
th1=30/180*pi;//angle
th2=20/80*pi;//angle
g=9.81;
th=atan(V1*sin(th1)/(V1*cos(th1)-Vp));
V1r=V1*sin(th1)/sin(th);
V2r=V1r;
//on solving 
phi=4/180*pi;
V2=V2r*sin(phi)/sin(th2);
V2w=V2*cos(th2);
W=(V2w+V1*cos(th1))*Vp/g;
disp(W,"work done per N of fluid(Nm)=");
Effi=1-(V2/V1)^2;
disp(Effi*100,"efficiency(%)=");
clear
