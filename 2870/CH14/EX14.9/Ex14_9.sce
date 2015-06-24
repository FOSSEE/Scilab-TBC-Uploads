clc;clear;
//Example 14.9

//given data 
m=100;
T1=20;
P1=1;
RH1=60;
T2=30;
RH2=1;
T3=35;
T4=22;

//from Table A-4
h1=42.2;
w1=0.0087;
v1=0.842;
h2=100;
w2=0.0273;
h3=146.64;
h4=92.28;

//calculations
//Dry air balane = ma1 = ma2 = ma
//Water balance = m3 - m4 = ma*(w2 - w1)
//Energy balance = ma1*h1 + m3*h3 = ma2*h2 + m4*h4
ma= m*(h3-h4)/(h2-h1-(w2-w1)*h4);
V1=ma*v1;
mmakeup=ma*(w2-w1);
disp(V1,'the volume flow rate of air into the cooling tower in m^3/s');
disp(mmakeup,'the mass flow rate of the required makeup water in kg/s')
