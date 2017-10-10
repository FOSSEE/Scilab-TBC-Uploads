//Input voltage Vin, Output voltage Vout, Output current Iout
close();
clear;
clc;
Vin = 220;//V
V1 = Vin;
Vout = 110;
V2 = Vout;
Iout = 10;//A
I2 = Iout;
a = V1/V2;
//weight_auto/weight_trans = 'weightr'
weightr = 1 - (2/a)/2;//since N1/N2 = I2/I1 = a
mprintf('We have %0.0f %% saving in copper',weightr*100);