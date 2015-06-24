// Exa 3.27
format('v',7);clc;clear;close;
// Given data
Im = 10;//current in mA
Im = Im * 10^-3;// in A
Rm = 50;//meter resistance in ohm
I = 5;// in A
// Value of resistance to be connected in parallel 
Rsh = (Im*Rm)/(I-Im);// in ohm
disp(Rsh,"The value of resistance to be connected in parallel in Ω is");
V = 250;// in V
// The value of resistance to be connected in series 
Rs = (V/Im) - Rm;// in ohm
disp(Rs,"The value of resistance to be connected in series in Ω is");
