// Example 2.37.b:baising component
clc;
clear;
close;
Vb=1.6;//
Ve=1;//
Vcc=12;// Colector voltage in volts
Beta=180;
Ieq=2;// Emiier current in mA
Rc=1;// Collector resistance in killo ohms
Vbe=0.6;// Base to emitter voltage in volts
Vceq=6;// Collector to emitter voltage in volts
Ic= (Vcc-Vceq-Ve)/Rc;
Ib=Ic/Beta;
Ie=Ic+Ib*10^-3;//emitter current in milli ampere
Re= (Ve/Ie);//emitter resistance in killo ohms
Ir2= 10*Ib;
R2= (Ve+Vbe)/Ir2;//
Ir1=Ir2+Ib;//
R1=((Vcc-Vb)/Ir1);//
disp (R2," RESISTANCE IN KILLO OHMS")

