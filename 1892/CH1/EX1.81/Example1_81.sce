// Example  1.81

clc;clear;close;

// Given data
format('v',6);
P=4;//no. of poles
f=50;//in Hz
VL=200;//in volt
R2=0.1;//in ohm
X2=0.9;//in ohm
Te2ByTe1=0.67;//ratio of rotor to stator turns
S=4;//in %

//calculations
S=S/100;//slip
Ns=120*f/P;//in rpm
E1=VL/sqrt(3);//in volt
E2=E1*Te2ByTe1;//in volt
Td=3*S*E2^2*R2/2/%pi/(Ns/60)/(R2^2+(S*X2)^2);//in N-m
disp(Td,"(a) Total torque at 4% slip in N-m : ");
Tmax=3*E2^2/2/%pi/(Ns/60)/(2*X2);//in N-m
disp(Tmax,"(b) Total torque at 4% slip in N-m : ");
Sm=R2/X2;//slip at max torque
Nm=(1-Sm)*Ns;//speed at Tmax in rpm
disp(Nm,"(c) Speed at maximum torque in rpm : ");
Pmd_max=2*%pi*Nm/60*Tmax;//in N-m
disp(Pmd_max,"(d) Maximum mechanical power in N-m : ");
