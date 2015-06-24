// Example 1.11
clc;
clear;
close;
// Given data
format('v',6);
VEE= 15;//in V
VD1= 0.7;// in V
VD2= 0.7;// in V
VBE= 0.7;// in V
Beta= 100;
VT= 26;// in mV
R3= 180;//in Ω
RC= 470;// in Ω
VB3= -VEE+VD1+VD2;//in V
VE3= VB3-VBE;//voltage at emitter terminal of transistor Q3 in V
IE3= (VE3-(-VEE))/R3;//emitter current through transistor Q3 in A

//Part  (i) 
ICQ= IE3/2;//quiescent current in A
ICQ= round(ICQ*10^3);//in mA
IE= ICQ;//emitter current in mA
disp(ICQ,"(i) : Quiescent current in mA is : ")
VCEQ= VEE+VBE-ICQ*10^-3*RC;//quiescent collector-emitter voltage in V
disp(VCEQ,"The quiescent collector-emitter voltage in volts is : ")
re_desh= VT/IE;//AC emitter resistance in Ω

// Part (ii)
Ad= RC/re_desh;// differential voltage gain
disp(Ad,"(ii) : Differential voltage gain is : ")

// Part (iii)
Rin1= 2*Beta*re_desh;// in Ω
Rin1= Rin1*10^-3;// in kΩ
disp(Rin1,"(iii) : The input resistance in kΩ is : ")
