// Example 2.39.b: R1 & R2
clc;
clear;
close;
Vcc=5;// Colector voltage in volts
Beta=100;
Vce=2.5;// Collector to emitter voltage in volts
Vbe=0.6;// Base to emitter voltage in volts
R4=0.3;// Resistance in killo ohms
R2=10;// Resistance in killo ohms
Ic=1;// Collector current in mA
Vr4=(1+(1/Beta))*Ic*R4;
Vcn= Vce-Vr4;
R3=(Vcc-Vcn)/Ic;
Rb=8.03;// Base resistance in killo ohms
R1=(Rb*R2)/(R2-Rb);
disp(R1,"Resistance in killo ohms")
disp(Rb,"Base Resistance in killo ohms")
