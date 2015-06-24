// Exa 4.9
format('v',4);
clc;
clear;
close;
// Given data 
Beta= 100;

// Part (a)
RE= 150;// in Ω
VT= 25;// in mV
VT= VT*10^-3;// in V
IE= 0.5;// in mA
IE=IE*10^-3;// in A
re1= VT/IE;//in Ω
R_id= 2*(Beta+1)*(re1+RE);// in Ω
R_id= round(R_id*10^-3);// in kΩ
disp(R_id,"The input differential resistance in kΩ is :")

// Part (b)
RC=10;//in kΩ
RC=RC*10^3;//in Ω
Rsig= 5+5;// in kΩ
VoltageGain1= R_id/(Rsig+R_id);//voltage gain from the signal source to the base of Q1 and Q2 in V/V
VoltageGain2= 2*RC/(2*(re1+RE));// voltage gain from the bases to the output in V/V
Ad= VoltageGain1*VoltageGain2;//in V/V
disp(Ad,"The overall differential voltage gain in V/V is ");

// Part (c)
format('e',9)
delta_RC= 0.02*RC;
R_EE= 200;//in kΩ
R_EE=R_EE*10^3;//in Ω
Acm= RC/(2*R_EE)*delta_RC/RC;//in V/V
disp(Acm,"Common mode gain in V/V is :")

// Part (d)
format('v',4);
CMRRindB= 20*log10(Ad/Acm);// in dB
disp(CMRRindB,"CMRR in dB is : ")

// Part (e)
V_A= 100;// in V
r_o= V_A/(IE);// in Ω
// Ricm= (Beta+1)*(R_EE || r_o/2)
Ricm= (Beta+1)*(R_EE*(r_o/2)/(R_EE+(r_o/2)));
disp(Ricm*10^-6,"Input common mode resistance in MΩ is : ")


