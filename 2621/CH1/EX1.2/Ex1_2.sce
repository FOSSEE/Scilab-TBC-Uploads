// Example 1.2
clc;
clear;
close;
// Given data
format('v',6);
VCC= 10;//in V
VEE= -10;// in V
RC= 10;//in kΩ
RE= 9.3;// in kΩ
VBE= 0.7;// in V
IE= (abs(VEE)-VBE)/(2*RE);// emitter current in mA
ICQ= IE;//quiescent collector current in mA
disp(ICQ,"The quiescent collector current in mA");
// Quiescent Collector-emitter voltage,
VCEQ= VCC+VBE-ICQ*RC;// in V
disp(VCEQ,"The quiescent collector-emitter voltage in volts is : ");
