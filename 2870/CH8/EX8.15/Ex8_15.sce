clc;clear;
//Example 8.15
//calculation error in textbook in part - b which changes all the following answers

//given data
m=8;
T0=25+273;//in K
P0=100;
P1=3000;
T1=450;
P2=200;
T2=150;
Qout=300;

//from Table A-6 and A-4
h1=3344.9;
s1=7.0856;
h2=2769.1;
s2=7.2810;
h0=104.83;
s0=0.3672;

//calculations
// Ein = Eout
Wout=m*(h1-h2)-Qout;
disp(Wout,'the actual power output in kW');
// Xin = Xout
Wrev=m*((h1-h2)-T0*(s1-s2));
disp(Wrev,'the maximum possible work output in kW');
nII=Wout/Wrev;
disp(nII,'second law efficiency');
Xdestroyed=Wrev-Wout;
disp(Xdestroyed,'the exergy destroyed in kW');
X1=h1-h0-T0*(s1-s0);
disp(X1,'the exergy of the steam at inlet conditions in kJ/kg')
