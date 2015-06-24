clc;clear;
//Example 14.6

//given data
V1=10;
T1=30;
RH1=0.8;
T2=14;
RH2=1;

//from Table A-4
hw=58.8;
h1=85.4;
h2=39.3;
w1=0.0216;
w2=0.0100;
v1=0.889;

//calculations
//mw= ma*(w1-w2)
//Qout=ma*(h1-h2) - mw*hw
ma=V1/v1;
mw= ma*(w1-w2);
Qout=ma*(h1-h2) - mw*hw;
disp(mw,'rates of moisture removal from the air in kg/min');
disp(Qout,'rate of moisture removal from the air in kJ/min');
