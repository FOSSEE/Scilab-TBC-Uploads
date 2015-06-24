// Example 1.6

clear; clc; close;

format('v',6);
// Given data
P=4;//No. of poles
f=50;//in Hz
R2=0.1;//in ohm
X2=1;//in ohm
N=1440;//in rpm
E1_line=400;//in volt
Kdash=2;//stator turns by rotor turns

//Calculations
K=1/Kdash;//rotor turns by stator turns
Ns=120*f/P;//in rpm
E1ph=E1_line/sqrt(3);//
//Formula : E2ph/E1ph=K
E2ph=E1ph*K;//in volt
S=(Ns-N)/Ns;//Slip
ns=Ns/60;//synchronous speed in rps
T=3/(2*%pi*ns)*(S*E2ph^2*R2)/(R2^2+(S*X2)^2);//in N-m
disp(T,"Torque devloped on full load in N-m : ");
