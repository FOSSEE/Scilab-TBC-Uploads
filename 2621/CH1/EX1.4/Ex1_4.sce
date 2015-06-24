// Example 1.4
clc;
clear;
close;
// Given data
format('v',7);
RC= 2.2;//in kΩ
RE= 4.7;// in kΩ
RE= RE*10^3;// in Ω
Ri1= 50;// in Ω
Ri2= 50;// in Ω
VCC= 10;//in V
VEE= 10;// in V
VBE= 0.7;// in V
beta_dc= 100;
beta_ac= 100;

// Part (a)
// Formula Used : ICQ= IE= (VEE-VBE)/(2*RE+Ri/beta_dc)
ICQ= (VEE-VBE)/(2*RE+Ri1/beta_dc);//quiescent collector current in A
ICQ= ICQ*10^3;// in mA
IE= ICQ;// in mA
disp("Part (a)")
disp(ICQ,"The value of ICQ in mA is : ");
// Quiescent collector-emitter voltage,
VCEQ= VCC+VBE-ICQ*RC;// in V
disp(VCEQ,"The value of VCEQ in volts is : ");

// Part (b)
re_desh= 26/IE;// AC emitter resistance in Ω
// Formula Used : Ad= Vout/Vind= RC/re_desh
Ad= RC*10^3/re_desh;// voltage gain
disp("Part (b)")
disp(Ad,"The voltage gain is : ");

// Part (c)
Rin1= 2*beta_ac*re_desh;// input resistance in Ω
Rin1= Rin1*10^-3;//in kΩ
Rin2= Rin1;// in kΩ
disp("Part (c)");
disp(Rin1,"The input resistance in kΩ is : ");

// Part (d)
Rout1= RC;// in kΩ
disp("Part (d)");
disp(Rout1,"The output resistance in kΩ is : ");


