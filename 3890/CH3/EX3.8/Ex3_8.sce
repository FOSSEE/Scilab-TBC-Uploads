//Electric machines and power systems by Syed A Nasar
//Publisher:TataMcgraw Hill
//Year: 2002 ; Edition - 7 
//Example 3.8
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

v1=2400;        //primary voltage of transformer in v
v2=480;         //secondary voltage of transformer in v 
xm=400;         //magnetising reactance in ohms
x1=.29;       //primary leakage reactance in ohms
x2=.012;      //secondary leakage reactance in ohms
R1=.058;      //primary resistance in ohms
R2=.002;         //secondary resistance in ohms

a=v1/v2;
k=xm/(xm+x1);
z10=R1+%i*(x1+xm);
z20=R2+%i*(x2+(xm/(a^2)));
z=(z10*z20)^(1/2);
ad=(z10+k*z)/(z20+k*z);

printf('the voltage transformation ratio is %f',ad)
