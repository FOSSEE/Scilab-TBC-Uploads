// Example 2.39.b: Change in Icq
clc;
clear;
close;
R1=500;//Resistance in killo ohms
Rc=500;//Collector resistance in killo ohms
R2=5000;//Resistance in killo ohms
Vcc=20;// Colector voltage in volts
Beta=75;
Rc=6.2;// Collector resistance in killo ohms
Re=90;// Emitter resistance in ohms
Vbe=0.7;// Base to emitter voltage in volts
Rb=((R1*R2)/(R1+R2));
Vb=Vcc * (R1/(R1+R2)); // vOLTAGE AT BASE
Icbo=0.02;// Collector to base leakage current in mA
Sre= (Re/(Rb+Re*Beta)^2)*(Icbo*10^-6*Rb-Beta(Vb+Rb*Icbo*10^-6-Vbe));
DeltaRe= 110-90;// Change in  ohms
DeltaIcq= Sre*DeltaRe ;// Change in Icq
disp(DeltaIcq," Change in Icq in amperes")
