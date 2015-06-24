// Example 7.7
format('v',5)
clc;
clear;
close;
// given data
V_B= 1.8;// in V
V_E= 1.1;// in V
V_TH= 200*10^-3;// in V
I_E= 1*10^-3;// in A
r_e= 2.5;//in Ω
bita=200;
V_CC= 10;// in V
R_C= 5*10^3;// in Ω
R_E= 430;// in Ω
R_L= 1*10^3;//in Ω
I_C= I_E;// in A
// The collector voltage,
V_C= V_CC-I_C*R_C;// in V
V_E= 4.3;// in V
// The emitter current,
I_E= V_E/R_E;// in A
// The base current,
I_B= I_E/bita;// in A
// The load resistance,
r_L= R_E*R_L/(R_E+R_L);// in Ω
Zin= bita*(r_L+r_e);// in Ω
Vin= Zin*V_TH/(R_C+Zin);// in V
// The ac output voltage
Vout= r_L*Vin/(r_L+r_e);//in V
Vout= Vout*10^3;// in mV
disp(Vout,"The ac output voltage in mV is : ")
