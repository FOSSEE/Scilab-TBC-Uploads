// Example 2.32:Beta ,Vcc & Rb
clc;
clear;
close;
Rc=2.7;// Collector resistance in killo ohms
Re=0.68;// Collector resistance in killo ohms
Ib=0.02;// Base Current in mA
Vce=7.3;// Collector to emitter voltage in volts
Vbe=0;// Base to emitter voltage in volts
Ve=2.1;// Emitter Voltage
Ie= Ve/Re;// Emiiter Current in mA
Ic=Ie;
Beta=Ic/Ib;//Common emitter D.C. Current gain
Vcc= Vce+Ic*(Rc+Re);//Supply Voltage
Rb=(Vcc-Ve)/Ib;//Base resistance in Killo ohms
disp(Beta,"Common emitter D.C. Current gain (unitless)")
disp(Vcc,"Supply Voltage in Volts")
disp(Rb,"base resistance in killo ohms")
