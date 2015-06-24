//Example 18.1
//Extrusion Process
//Page No. 629
clc;clear;close;

Db=6;                    //in inches
Df=2;                    //in inches
L=15;                    //in inches
v=2;                    //in inches/s
alpha=60;                    //in degrees
mu=0.1;                    //no unit
R=Db^2/Df^2;
e=6*v*log(R)/Db
sigma=200*e^0.15;
B=mu*cotd(alpha);
p_d=sigma*((1+B)/B)*(1-R^B);
p_d=abs(p_d);
t_i=sigma/sqrt(3);
p_e=p_d+4*t_i*L/Db;
p_e=p_e*145.0377;                    //conversion to psi
A=%pi*Db^2/4;
P=p_e*A;
P=P*0.000453;                      //conversion to metric tons
printf('\nForce required for the Operation = %g metric tons\n\n\nNote: Slight calculation errors in book',P);
