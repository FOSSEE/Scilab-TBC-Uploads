clc;clear;
//Example 14.5
//difference in first part is due to selective roundingoff to particular decimals in h1 and h2

//given data
RH1=0.3;
P1=100;
V1=45;
T1=10;
T2=22;
RH3=0.6;
T3=25;

//from Table A-2a & A-4
cp=1.005;
Ra=0.287;
Pg1=1.2281;
hg1=2519.2;
hg2=2541.0;
Pg3=3.1698;

//calculations
Pv1=RH1*Pg1;
Pa1=P1-Pv1;
v1=Ra*(T1+273)/Pa1;
ma=V1/v1;
w1=0.622*Pv1/(P1-Pv1);
h1=cp*T1+w1*hg1;
w2=w1;
h2=cp*T2+w2*hg2;
Q=ma*(h2-h1);
// ma2*w2 + mw = ma3*w3
//which reduces to mw = ma * (w3 - w2)
w3=0.622*RH3*Pg3/(P1-(RH3*Pg3));
mw=ma*(w3-w2);
disp(Q,'the rate of heat supply in the heating section in kJ/min');
disp(mw,'the mass flow rate of the steam required in the humidifying section in kg/min')
