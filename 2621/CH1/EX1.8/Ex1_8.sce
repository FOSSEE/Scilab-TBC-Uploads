// Example 1.8
clc;
clear;
close;
// Given data
format('v',6);
VEE= 9;//in V
VCC= 9;//in V 
RC= 47*10^3;// collector resistance in Ω
RE= 43*10^3;// emitter resistance in Ω
vin1= 2.5*10^-3;// in V
Ri1= 20*10^3;// in Ω
Ri2= Ri1;// in Ω
VBE= 0.7;// in V
VT= 26*10^-3;// in V
beta1= 75;
beta2= 75;
IE= (VEE-VBE)/(2*RE+Ri1/beta1);//emitter current in A
ICQ= IE;// quiescent current in A
VCEQ= VCC+VBE-ICQ*RC;// quiescent collector voltage in V
re_desh= VT/IE;//AC emitter resistance in Ω
Ad= RC/re_desh;// voltage gain
vout= Ad*vin1;// output voltage in V
disp(vout,"The output voltage in volts is : ");
