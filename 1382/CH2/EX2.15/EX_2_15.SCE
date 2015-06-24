// Example 2.15: Calculate emitter current , Collector current  and Collector to emitter voltage 
Vcc=10;// Colector voltage in volts
Vbe=0.7;// Base to emitter voltage  in volts
Vee=10;// emitter voltage  in volts
Rb= 50;// in KILLO OHMS
Beta=100;//Common emitter D.C. Current gain
Rc=1;// Collector resistance in killo ohms
Re=5;// Emitter resistance in killo ohms
Ie= (Vee-Vbe)/Re;
Ic= Ie
Vce1=Vcc -(Ic*Rc);
Ve=-Vbe;
Vce=Vce1-Ve
disp(Ie,"Emitter Current in mA")
disp(Ic,"Collector current in mA")
disp(Vce,"Collector to ground voltgae in volts")
