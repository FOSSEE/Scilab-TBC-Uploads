// Example 2.25: Quiescent , stability factor
clc;
clear;
close;
Vcc=16;// Colector voltage in volts
alfa=0.985;
Rc=3;// Collector resistance in killo ohms
Re= 2;// in kilo ohms
R1= 56;// in kilo ohms
R2= 20;// in kilo ohms
Vbe=0.3;// Base to emitter voltage in volts
Beta= alfa/(1-alfa);
Vb=Vcc * (R2/(R1+R2)); // vOLTAGE AT BASE
Ic= (Vb-Vbe)/Re; //in milli amperes
Ib=Ic/Beta;//in milli ampere
Vce= Vcc-(Ic*(Rc+Re)); //Colector to emitter voltage in volts
Rth= (R1*R2)/(R1+R2);
S=((1+Beta)*(1+Rth/Re))/(1+Beta+Rth/Re);
disp ("Operating point is (Vce,Ic) ")
disp(Vce,"Colector to emitter voltage In Volts")
disp (Ic,"Collector current in milli Ampere")
disp (S,"The Stability factor")
