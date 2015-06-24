// Example 1.51

clear; clc; close;

format('v',5);
// Given data
P=4;//no. of poles
f=50;//in Hz
R2=0.25;//in ohm per phase
X2=2;//in ohm per phase
N1=1455;//ion rpm
N2=N1*83/100;//in rpm
 
//Calculations
Ns=120*f/P;//synchronous speed in rpm
S1=(Ns-N1)/Ns;//Slip
S2=(Ns-N2)/Ns;//Slip at reduced speed
//Formula : T proportional to S*E2^2*R2/(R2^2+(S*X2)^2)
T1ByT2=1;//as T1=T2 & For T2: R2dash Rex+R2
//S1*R2*R2dash^2-R2dash(T1ByT2*S2*R2^2+T1ByT2*S2*(S1*X2)^2)+S1*R2*(S2*X2)^2=0
P=[S1*R2 -(T1ByT2*S2*R2^2+T1ByT2*S2*(S1*X2)^2) S1*R2*(S2*X2)^2];//Polynomial for R2dash
R2dash=roots(P);//in ohjm per phase
R2dash=R2dash(1);//neglecting lower value
Rex=R2dash-R2;//in ohm per phase
disp(Rex,"External resistance required in ohm per phase : ");
