//example 2.11
//page 77
clc; funcprot(0);
//initialisation of variable
pi=3.14;
P=50*144;//pressure
Gamma=62.4;//unit weight
A=4*1;//area
Ig=4^3/12;
ybar=115.4+2.5+2;
//part1
Fh=Gamma*A*ybar;
disp(Fh,"Horizontal component of Hydrastatic Force(lbs)=");
//part2
hbar=ybar+Ig/A/ybar;
Fv1=Gamma*A*117.9;
Fv2=pi*4^2/4*Gamma;
Fv=Fv1+Fv2;
disp(Fv,"Vertical component of Hydrostatic force (lbs)=");
xv=(Fv1*2+Fv2*1.7)/Fv;
disp(xv,"point of application of vertical force(ft)");
clear
