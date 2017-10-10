clc;
p=6; // number of poles
m=3; // number of phases
f=50; // frequency of motor
P=40000; // rated power of induction motor
v=400; // rated voltage of induction motor
// results of blocked  rotor test
vb=200; // applied voltage
ib=110; // applied current
pf=0.4; // power factor
f1=45; // frequency at starting torque is to be determined
e=380; // voltage at starting torque is to be determined
vbp=vb/sqrt(3); // per phase voltage during blocked  rotor test
zb=vbp/ib; // total impedance referred to stator
R=zb*pf; // net resistance referred to stator
X=zb*(sqrt(1-pf^2)); // net reactance referred to stator
X=X*(f1/f); // net reactance at frequency=45
Z=R+X*%i; // impedance at frequency=45
v1=e/sqrt(3); // per phase stator
is=v1/(Z); // starting current
ws=(4*%pi*f)/p; // synchronous speed
T=(3/ws)*abs(is)^2*(R/2);
printf('Starting torque is %f Nm',T);
