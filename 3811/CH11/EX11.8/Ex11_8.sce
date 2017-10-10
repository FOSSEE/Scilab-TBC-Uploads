//Book Name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 11
//example 11.8
//edition 1
//publishing place:Thomson Learning
clc;
clear;
V=480;//terminal voltage in volt
n=1120;//related full load speed of the motor in rpm
R1=1;//stator resistance in ohm
R2=1;//rotor resistance referred to stator in ohm
X1=5;//equivalent winding resistance in ohm
J=4;//inertia of the motor in NM sec^2
ns=1200;//nearest synchronous speed of the motor in rpm
tbr=15;//time taken to stop the motor in sec
s1=2;
s2=1;
rps=ns/60;
omegas=(2*%pi*rps);
smax=R2/sqrt(R1^(2)+X1^(2));
Tmax=V^(2)/(2*omegas*(R1+sqrt(R1^(2)+X1^(2))));
tau=(2*tbr)/(((s1^(2)-s2^(2))/(2*smax))+(smax*log(s1/s2))+(2*smax*(s1-s2)));
Tmax1=(J*omegas)/tau;
Vbr=sqrt(Tmax1/Tmax)*V;
mprintf("The magnitude of motor voltage during braking is %f volt",Vbr)
//The answer provided in the textbook is wrong

