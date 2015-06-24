clear;
clc;
printf("\n Example 9.3");
//In the filter press
// V^2 + 2(AL/v)V = 2(-deltaP)A^2*t/(ruv)

l = 0.025;         //l is in meters
L = 0.003;         //L is in meters
deltaP = 350;      //it is in N/m^2
t = 3600;          //t is in secs

// x = v/ru
x = poly([0],'x');
x1 = roots(0.025^2 + 2*0.003*0.025 - 2*3.5*10^(5)*3600*x);
printf("\n the value of ru/v = %.2f*10^12",(1/x1)*10^(-12));

//In the centrifuge
R = 0.15;             //R is in meters
H = 0.20;             //H is in meters
V = 0.00225;          //V is in m^3
r = poly([0],'r');
r1 = roots(%pi*(R^2 - r^2)*H-V);
printf("\n Value of ro = %f mm",r1(1)/2);
printf("\n angular frequency = %.1frad/s",(r1(1)/2*10^3)*2*(%pi));

//(R^2 -r^2)(1+2L/R)+2r^2ln(r/R) = 2vtpw^2/ru(R^2-ro^2)
t = poly([0],'t');
t1 = roots((R^2 - r1(1)^2)*(1+2*(L/R))+2*(r1(1)^2)*log(r1(1)/R)-2*t*1000*408.4^(2)/(3.25*10^12)*(R^2-(r1(1)/2)^2));
printf(" \n time required = %f secs",t1);








