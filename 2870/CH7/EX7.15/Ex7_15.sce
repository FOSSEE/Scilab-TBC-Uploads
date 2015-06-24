clc;clear;
//Example 7.15

//given data
P1=100;
T1=285;
P2=800;
m=0.2;
nc=0.8;

//from Table A-17
//at T1
h1=285.14;
Pr1=1.1584;

//calcualtions
Pr2=Pr1*(P2/P1);
//at Pr2
h2s=517.05;
h2a=(h2s-h1)/nc+h1;
//at h2a
T2a=569.5;
disp(T2a,'exit temperature of air in K');
//Ein = Eout
Wa=m*(h2a-h1);
disp(round(Wa),'required power input in kW')
