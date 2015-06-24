// Example 1.9
clc;
clear;
close;
// Given data
format('v',7);
RC= 2.2;//in kΩ
RE= 4.7;// in kΩ
Ri1= 50*10^-3;// in kΩ
Ri2= 50*10^-3;// in kΩ
VCC= 10;//in V
VEE= 10;// in V
VBE= 0.7;// in V
beta_dc= 100;
beta_ac= 100;

// Part (i)
// Formula Used : ICQ= IE= (VEE-VBE)/(2*RE+Ri/beta_dc)
ICQ= (VEE-VBE)/(2*RE+Ri1/beta_dc);//quiescent collector current in mA
IE= ICQ;// in mA
disp("Part (i) : Dual-input, unbalanced output")
disp(ICQ,"The value of ICQ in mA is : ");
// Quiescent collector-emitter voltage,
VCEQ= VCC+VBE-ICQ*RC;// in V
disp(VCEQ,"The value of VCEQ in volts is : ");
re_desh= 26/IE;// AC emitter resistance in Ω
Rin1= 2*beta_ac*re_desh;// input resistance in Ω
Rin1= Rin1*10^-3;//in kΩ
Rin2= Rin1;// in kΩ
disp(Rin1,"The value of Rin1 in kΩ is : ");
Rout= RC;// in kΩ
disp(Rout,"The value of Rout in kΩ is : ");
disp(RC,"The value of RC in kΩ is : ")
// Formula Used : Ad= Vout/Vind= RC/re_desh
Ad= RC*10^3/(re_desh*2);// voltage gain of dual input, unbalanced output
disp(Ad,"The value of Ad is : ");

// Part (ii)
disp("Part (ii) : Single-output, balanced output");
disp(ICQ,"The value of ICQ in mA is : ");
disp(VCEQ,"The value of VCEQ in volts is : ");
disp(Rin1,"The value of Rin1 in kΩ is : ");
disp(Rout,"The value of Rout in kΩ is : ");
disp(RC,"The value of RC in kΩ is : ")
// Formula Used : Ad= Vout/Vind= RC/re_desh
Ad= RC*10^3/(re_desh);// voltage gain of dual input, unbalanced output
disp(Ad,"The value of Ad is : ");


