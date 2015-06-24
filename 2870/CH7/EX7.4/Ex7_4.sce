clc;clear;
//Example 7.4

//given data
m=3;
P1=20;
T1=70+460;//in R
Qin=3450;

//from Table A-6E
//at P1 and T1
s1=0.07459;
h1=38.08;

//calculations
//Ein - Eout = dEsystem
//Qin = m*(h2 - h1)
h2=Qin/m+h1;
//from Table A-6E
//At P2 and h2
s2=1.7761;
dS=m*(s2-s1);
disp(dS,'entropy change in Btu/R');
