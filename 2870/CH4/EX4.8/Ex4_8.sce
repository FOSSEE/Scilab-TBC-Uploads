clc;clear;
//Example 4.8

//given data
m=1.5;
T1=80;
P1=50;
W=0.02;
t=30/60;//convertinginto hrs from min

//from Table A–2Ea
Cv=0.753;

//calculations

//part a
Wsh=W*t*2545;//in Btu
//Ein - Eout = Esystem
//Wsh = dU = m (u2 - u1) = m * Cv * (T2 - T1)
T2= Wsh/(m*Cv)+T1;
disp(T2,'the final temperature in F');

//part b
//using ideal gas eqn
// P1 * V1 / T1 = P2 * T2 /V2
P2= 50 * (T2 +460)/ (T1+460);
// temp should in R therefore + 460
disp(P2,'the final pressure in psia')
