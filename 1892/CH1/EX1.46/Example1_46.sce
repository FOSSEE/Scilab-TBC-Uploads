// Example 1.46

clear; clc; close;

format('v',6);
// Given data
P=4;//no. of poles
f=50;//in Hz
R2=0.2;//in ohm per phase
X2=1;//in ohm per phase
Sf=4;//full load slip in %
N2=1260;//reduced speed in rpm

//Calculations
Sf=Sf/100;//full load slip
Ns=120*f/P;//in rpm
S2=(Ns-N2)/Ns;//new value of slip
//Let new resistance is R2dash
//Formula : T proportional to S*E2^2*R2/(R2^2+(S*X2)^2)
//T1=T2 as load is same
//R2dash^2*Sf*E2^2*R2-R2dash*[R2^2+(Sf*X2)^2]*(S2*E2^2)+Sf*E2^2*R2*(S2*X2)^2=0
P=[Sf*R2 -[R2^2+(Sf*X2)^2]*(S2) Sf*R2*(S2*X2)^2];//polynomial for R2dash
R2dash=roots(P);
R2dash=R2dash(1);//discarding smaller value as R2dash cant be < R2
Rex=R2dash-R2
disp(Rex,"Extra resistance required in ohm per phase : ");
