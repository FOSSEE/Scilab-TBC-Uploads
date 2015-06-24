// Example 2.42: Icq
clc;
clear;
close;
T2=20;// Temperature in degree celsius
T1=0;// Temperature in degree celsius
Vcc=15;// Colector voltage in volts
Beta=75;
Vce=2.5;// Collector to emitter voltage in volts
Vbe1=0.7;// Base to emitter voltage in volts
Rb= 50;// Emitter resistance in killo ohms
Rc=3;// Collector resistance in killo ohms
Re=1;// Collector resistance in killo ohms
Ib= ((6-Vbe1)/(Rb+(1+Beta)*Re))*10^3;//Base Current in Micro Amperes
Ic= Beta*Ib*10^-3;// Colectore Current in  Milli Ampere
Icbo1=0.5;// Collector to base leakage current in Micrometer
Icbo2=Icbo1*2^((T2-T1)/10);// Collector to base leakage current in Micrometer when temperature 20 degree celsius
Vbe2=Vbe1-2*T2*10^-3;// base to emitter voltage when temperature is 20 degree celsius
Ib1=((6-Vbe2)/(Rb+(1+Beta)*Re))*10^3;//Base Current in Micro Amperes at  20 degree celsius
Ic1=Beta*Ib*10^-3;// Colectore Current in  Milli Ampere
disp(Ib,"Base Current in micro amperes")
disp(Ic,"Collector current in mA")
disp(Icbo2,"Collector to base leakage current when T=20 degree celsius in micro ampere")
disp(Vbe2,"Base to emitter voltage when T==20 degree celsius in VOLTS ")
disp(Ib1,"Base Current when T=20 degree celsius in micro amperes")
disp(Ic1,"Collector current when T=20 degree celsius in mA")

