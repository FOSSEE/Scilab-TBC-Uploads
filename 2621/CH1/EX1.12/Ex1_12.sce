// Example 1.12
clc;
clear;
close;
// Given data
format('v',6);
VEE= 10;//in V
VCC=10;// in V
VD1= 0.715;// in V
Vz= 6.2// in V
VBE= VD1;// in V
Izt= 41;// in mA
R3= 2.7;// in kΩ
RC= 4.7;// in kΩ
VT= 26;// in mV
beta_ac= 100;
beta_dc= 100;
VB3= -VEE+Vz+VD1;//voltage at the base of transistor Q3 in V
VE3= VB3-VBE;// voltage at the emitter of transistor Q3 in V
IE3= (VE3-(-VEE))/R3;//emitter current through transistor Q3 in mA
ICQ= IE3/2;//quiescent current in mA
VCEQ= VCC+VBE-ICQ*RC;// in V
disp("Part (a) : The Q-point values : ");
disp(ICQ,"The value of ICQ in mA is : ");
disp(VCEQ,"The value of VCEQ in volts is : ")
re_desh= VT/ICQ;//dynamic emitter resistance in Ω
Ad= RC*10^3/re_desh;// voltage gain
disp(Ad,"Part (b) : The voltage gain is : ")
Rin= 2*beta_ac*re_desh;// differential input resistance in Ω
Rin=Rin*10^-3;// in kΩ
disp(Rin,"Part (c) : The differential input resistance in kΩ is : ")
