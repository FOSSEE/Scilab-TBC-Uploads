//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 10
//example 10.2
//edition 1
//publishing place:Thomson Learning
clc;
clear;
Vdc=200;//voltage at the dc link in volt
I=25;//motor current in A
R1=0.5;//stator resistance in ohm
Ib=3*I;
Vb=Ib*1.5*R1;//braking voltage in volt
d=1.5*(Vb/Vdc)^2;
mprintf("\nThe duty ratio of the FWM is %f",d)
