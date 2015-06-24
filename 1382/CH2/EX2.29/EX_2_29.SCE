// Example 2.29:Voltage across Re
clc;
clear;
close;
Vcc=20;// Colector voltage in volts
Beta=50;
R1= 60;// in kilo ohms
R2= 30;// in kilo ohms
Vbe=0.6;// Base to emitter voltage in volts
Vb=Vcc * (R2/(R1+R2)); // vOLTAGE AT BASE
Ve=Vb-Vbe;
disp(Ve,"voltage across Re In Volts")
