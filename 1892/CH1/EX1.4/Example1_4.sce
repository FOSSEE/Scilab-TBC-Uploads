// Example 1.4

clear; clc; close;

format('v',6);
// Given data
P=4;//No. of poles
f=50;//in Hz
K=1/2;//rotor to stator turns
N=1455;//in rpm
E1_line=415;//in volt


//Calculations
Ns=120*f/P;//in rpm
S=(Ns-N)/Ns;//Slip
fr=S*f;//induced emf frequency in Hz
disp(fr,"(i) Frequency of rotor emf in running condition in Hz : ");
N2BYN1=K;//rotor to stator turns
N1BYN2=1/K;//stator to rotor turns
E1ph=E1_line/sqrt(3);//
//Formula : E2ph/E1ph=K
E2ph=E1ph*K;//in volt
disp(E2ph,"(ii) Rotor induced emf at standstill in volt : ");
E2r=S*E2ph;//in volt
disp(E2r,"(iii) Rotor induced emf at running condition in volt : ");
