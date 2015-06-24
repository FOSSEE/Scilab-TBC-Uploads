// Example 2.24: Base Resistance , stability factor
clc;
clear;
close;
Vcc=24;// Colector voltage in volts
Beta=45;//Common emitter D.C. Current gain
Rl=10;// Collector resistance in killo ohms
Re=0.27;// Emitter resistance in killo ohms
Vce=5;// Collector to emitter voltage in volts
Vbe=0.6;// Base to emitter voltage in volts
Ib=(Vcc-Vce)/((1+Beta)*(Rl+Re));//in milli ampere
Ic=Ib/Beta;// in micro ampere
R=(Vce-Vbe)/Ib;// Resistance in killo ohms
S=(1+Beta)/(1+Beta*(Re/(Re+R)));
disp (R,"Base resistance in killo ohms")
disp (S,"The Stability factor")
