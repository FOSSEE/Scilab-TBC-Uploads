//Book Name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 11
//example 11.9
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
V=480;//terminal voltage in volt
n=1120;//related full load speed of the motor in rpm
R1=1;//stator resistance in ohm
R2=1;//rotor resistance referred to stator in ohm
Xeq=5;//equivalent winding resistance in ohm
J=4;//inertia of the motor in NM sec^2
ns=1200;//nearest synchronous speed of the motor in rpm
K=1.196;
rps=ns/60;
omegas=(2*%pi*rps);
s1=2;
s2=1;
Tmax=V^(2)/(2*omegas*(R1+sqrt(R1^(2)+Xeq^(2))));
tau=(J*omegas)/Tmax;
smax=sqrt((s2^2-s1^2)/(((-log(s1/s2))-(2*(s1-s2)))*2));//the equation is obtained by differentiating tbr with respect to smax
Radd=(smax*sqrt(R1^2+Xeq^2))-R2;//equation to find the Radd
mprintf("\nThe value of braking resistance to minimize the braking time is %f ohm",Radd)
