// Example 2.23: Base Currecnt ,Collector current
clc;
clear;
close;
Icbo=0;//collecttor to base leakage current
Vcc=9;// Colector voltage in volts
Beta=100;//Common emitter D.C. Current gain
Vce=5;// Collector to emitter voltage in volts
Ic=0.2; //in milli amperes
Rc=(Vcc-Vce)/Ic;;// Collector Reesistance in ohms
Ib=Ic/Beta;//in milli ampere
Rb=Vce/Ib;;//Base resistance in  ohms
disp(Rc,"Collector Reesistance in ohms")
disp (Rb,"Base resistance in ohms")

