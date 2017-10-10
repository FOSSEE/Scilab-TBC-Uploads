//Book Name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 11
//example 11.6
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
K=1.196;
rps=ns/60;
omegas=(2*%pi*rps);
Tmax=V^(2)/(2*omegas*(R1+sqrt(R1^(2)+X1^(2))));
tau=(J*omegas)/Tmax;
smax=R2/sqrt(R1^(2)+X1^(2));
tst=(tau/K)*((0.25/smax)+(1.95*smax)+smax);
mprintf("The starting time of the motor at no load and full voltage and frequency is %f sec",tst)
