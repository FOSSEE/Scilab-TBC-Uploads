// Example 2.12: Calculate  Collector current and Collector to emitter voltage
Vcc=25;// Colector voltage in volts
Vbe=0.7;// Base to emitter voltage  in volts
Rb= 180;// in KILLO OHMS
Beta=80;//Common emitter D.C. Current gain
Rc=0.82;// Collector resistance in killo ohms
Re=0.2;// Emitter resistance in killo ohms
Ic= (Vcc-Vbe)/(Re + (Rb/Beta));
Vce=Vcc -(Ic*(Rc+Re));
disp(Ic,"Collector current in mA")
disp(Vce,"Collector to ground voltgae in volts")
