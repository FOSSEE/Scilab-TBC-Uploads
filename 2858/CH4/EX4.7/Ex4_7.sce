//example 4.7
clc; funcprot(0);
phi=35;
Df=1.5;
B=1.5;
Gamma=17.4;
A=%pi/4*Df^2;
m=0.25;
Ku=0.936;
Fq=1+2*(1+m*Df/B)*Df/B*Ku*tan(phi*%pi/180);
Qu=Fq*Gamma*A*Df;
disp(Qu,"bearing capacity in kN");

