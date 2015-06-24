clc;clear;
//Example 4.10

//given data
P1=150;
P2=350;
T1=27+273;//in K
V1=400/1000;// in m^3
R=0.287;

//from Table A–17
u1=214.07;
u2=1113.52;

//calculations

//part a
V2=2*V1;
//using ideal gas eqn
// P1 * V1 / T1 = P2 * T2 /V2
T2=P2*V2*T1/(P1*V1);
disp(T2,'the final temperature in K');

//part b
// Work done is Pdv
W=P2*(V2-V1);
disp(W,'the work done by the air im kPa');

//part c
//Ein - Eout = Esystem
//Qin - Wout = dU = m(u2 - u1)
m= P1* V1 /(T1 * R);
Q= m*(u2 - u1)+ W;
Q=ceil(Q);
disp(Q,'the total heat transferred to the air in kJ')
