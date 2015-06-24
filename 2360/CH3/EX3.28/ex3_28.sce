// Exa 3.28
format('v',6);clc;clear;close;
// Given data
Im = 1;// in mA
Im = Im * 10^-3;// in A
Rm = 100;// in ohm
I = 100;// in mA
I = I * 10^-3;// in A
// For 100 mA range, the value of Rsh to be connected in parallel 
Rsh = (Im*Rm)/(I-Im);// in ohm
disp(Rsh,"For 100 mA range, the value of Rsh to be connected in parallel in Ω is");
I = 1;// in A
// For 1 A range, the value of Rsh to be connected in parallel 
Rsh = (Im*Rm)/(I-Im);// in ohm
disp(Rsh,"For 1A range, the value of Rsh to be connected in parallel in Ω is");
V = 1;// in V
// For 1V range, the value of Rs to be connected in series
Rs = (V/Im)-Rm;// in ohm
disp(Rs,"For 1V range, the value of Rs to be connected in series in Ω is");
V = 100;// in V
// For 100 V range, the value of Rs to be connected in series
Rs = (V/Im)-Rm;// in ohm
Rs= Rs*10^-3;// in k ohm
disp(Rs,"For 100V range, the value of Rs to be connected in series in kΩ is");
