// Example 1.1
clc;
clear;
close;
// Given data
format('v',6);
VCC= 9;//in V
VEE= -9;// in V
RC= 3.9;//in kΩ
RE= 3.3;// in kΩ
VBE= 0.7;// in V
IE= (abs(VEE)-VBE)/(2*RE);// emitter current in mA
IC= IE;// collector current in mA
// Collector voltage,
VC= VCC-IC*RC;// in V
disp(VC,"The collector voltage in volts is : ");
// Emitter voltage,
VE= 0-VBE;// in V
disp(VE,"The emitter voltage in volts is : ");
// Collecctor-emitter voltage,
VCE= VC-VE;// in V
disp(VCE,"The collector-emitter voltage in volts is : ");

// Note : There is some difference between coding output and the answer of the book because in the book the value of IE is used as 1.25mA while the calculated value of IE is 1.258
