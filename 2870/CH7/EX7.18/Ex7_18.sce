clc;clear;
//Example 7.18

//given data
P1=7;
T1=450;
P2=3;

//from steam tables
//at P1 and T1
h1=3288.3;
s1=6.6353;
//at P2
h2=h1;
s2=7.0046;

//calculations
// Sin - Sout + Sgen = dSsystem/dt
Sgen=s2-s1;
disp(Sgen,'the entropy generated in kJ/kg-K')
