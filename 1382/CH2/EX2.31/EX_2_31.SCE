// Example 2.31 Cut off,Vc & Re
clc;
clear;
close;
Vcc=10;//in volts
Rc=3;// Collector resistance in killo ohms
Rl=0.5;// in kilo ohms
Rb=7;// in kilo ohms
Beta=100;//Common emitter D.C. Current gain
Vbe=0.8;// Base to emitter voltage in volts
Ic=2.78;// in mA Applying KVL
Ib=0.1;// in mA Applying KVL
Ibmin=Ic/Beta;
Vc=Vbe;//in saturation region
Vce=Vc-Rl*(Ic+Ib);
Re=((Vcc-Vce)/Ic)-Rc;
disp(Ib,"Base current in mA")
disp(Ibmin,"Minimum Base  current  in mA")
disp("As Base current is more than minimum base current so it is in saturation region")
disp(Re,"Emitter resistance in killo ohms")
