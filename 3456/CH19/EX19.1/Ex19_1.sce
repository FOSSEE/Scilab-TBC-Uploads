//Example 19.1
//Analysis of Wiredrawing
//Page No. 640
clc;clear;close;

Ab=10;                    //in mm
r=0.2;                    //in %
alpha=12;                    //in degrees
mu=0.09;                    //no unit
n=0.3;                    //no unit
K=1300;                    //in MPa
v=3;                    //in m/s
B=mu*cotd(alpha/2);
e1=log(1/(1-r));
sigma=K*e1^0.3/(n+1);
Aa=Ab*(1-r);
sigma_xa=sigma*((1+B)/B)*[1-(Aa/Ab)^B];
Aa=%pi*Aa^2/4;
Pd=sigma_xa*Aa;
Pd=Pd/1000;                        //conversion to kilo units
P=Pd*v;
H=P/0.746;
printf('\nDrawing Stress = %g MPa\nDrawing Force = %g kN\nPower = %g kW\nHorsepower = %g hp',sigma_xa,Pd,P,H);
