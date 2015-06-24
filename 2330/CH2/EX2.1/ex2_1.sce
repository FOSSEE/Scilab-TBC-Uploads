// Example 2.1
clc;
clear;
close;
format('v',6)
// given data
Vin= 15;// in V
R_L= 10;// in kΩ
// The output voltage
Vout= Vin ;// in V
// The current
I= Vout/R_L;// in mA
disp(Vout,"The output voltage in volts is : ");
disp(I,"The current in mA is : ");
