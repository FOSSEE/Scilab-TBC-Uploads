// Exa 2.2
format('v',5)
clc;
clear;
close;
// Given data
V_F = 20;// in V
Vin = V_F;// in V
V_BE = 0.7;// in V
R1 = 500;//resistance in ohm
R2 = 10;// resistance in ohm
// Peak current though the diode
Ifpeak = (V_F-V_BE)/(R1+R2);// in A
Ifpeak = Ifpeak * 10^3;// in mA
disp(Ifpeak,"The peak current through the diode in mA is");
R_L = 500;// in ohm
// Peak output voltage
Vpeakout = Ifpeak*10^-3*R_L;// in V
disp(Vpeakout,"The peak out voltage in V is");
// For ideal diode
Ifpeak = V_F/R_L;// in A
Ifpeak = Ifpeak * 10^3;// in mA
// The peak output voltage for ideal diode 
Vpeakout= Ifpeak*10^-3*R_L;// in V
disp(Ifpeak,"The peak current for ideal diode in mA is");
disp(Vpeakout,"The peak output voltage for ideal diode in V is");
