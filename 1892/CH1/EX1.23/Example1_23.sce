// Example 1.23

clear; clc; close;
format('v',7);
// Given data
VL=400;//in volt
E1Line=VL;//in volt
P=4;//no. of poles
S=5;//in %
f=50;//in Hz
R2=0.15;//in ohm
X2=1;//in ohm
ratio=2;//ratio of stator to rotor turns

//Calculations
S=S/100;//slip
E1ph=E1Line/sqrt(3);//in Volt
K=1/ratio;//ratio of rotor to stator turns
E2ph=K*E1ph;//in volt
Ns=120*f/P;//in rpm
ns=Ns/60;//in rps
T=(3/2/%pi/ns)*S*E2ph^2*R2/(R2^2+(S*X2)^2);//in N-m
disp(T,"(i) Total Torque devloped in N-m :");
Tm=(3/2/%pi/ns)*E2ph^2/2/X2;//in N-m
disp(Tm,"(ii) Maximum Torque in N-m :");
Sm=R2/X2;//maximum slip
N=Ns*(1-Sm);//in rpm
disp(N,"(iii) Speed at maximum torque in rpm : ");
