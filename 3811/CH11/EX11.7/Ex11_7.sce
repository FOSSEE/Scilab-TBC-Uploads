//Book Name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 11
//example 11.7
//edition 1
//publishing place:Thomson Learning
clc;
clear;
V=480;//terminal voltage in volt
n=1120;//related full load speed of the motor in rpm
R1=1;//stator resistance in ohm
R2=1;//rotor resistance referred to stator in ohm
Radd=1;//starting resistance inserted in the rotor circuit in ohm
X1=5;//equivalent winding resistance in ohm
J=4;//inertia of the motor in NM sec^2
ns=1200;//nearest synchronous speed of the motor in rpm
rps=ns/60;
omegas=(2*%pi*rps);
smax=(R2+Radd)/sqrt(R1^(2)+X1^(2));
K=1.392;
Tmax=V^(2)/(2*omegas*(R1+sqrt(R1^(2)+X1^(2))));
tau=(J*omegas)/Tmax;
tst=(tau/K)*((0.25/smax)+(1.95*smax)+smax);
mprintf("The starting time of the induction machine is %f sec",tst)

