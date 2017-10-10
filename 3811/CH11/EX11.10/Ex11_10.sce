//Book Name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 11
//example 11.10
//edition 1
//publisher and place:Nelson Engineering
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
Tl=60;//load torque in Nm
rps=ns/60;
omegas=(2*%pi*rps);
Tmax1=V^(2)/(2*omegas*(R1+sqrt(R1^(2)+X1^(2))));
Tmax=fix(Tmax1)
tau=(J*omegas)/Tmax;
smax=R2/sqrt(R1^(2)+X1^(2));
TR=Tl/Tmax;
A=2*(smax^(2)-((K*smax)/TR));
Q=A^(2)-(4*smax^(2));
B=1+A+smax^(2);
mB=abs(B);
D1=(-2/sqrt(Q))*(atanh(abs(2+A)/sqrt(Q)));
D=abs(D1);
tst=(tau/TR)*(1-(((0.5*A)-smax^(2))*(abs(A*D)+log10(mB))));
mprintf("\nThe starting time of the induction machine is %f sec",tst)
