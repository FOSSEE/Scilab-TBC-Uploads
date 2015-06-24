// Example 2.10: Calculate base resistance , Voltage between collector & ground and Stability factor
Vcc=12;// Colector voltage in volts
Ib= 0.3;// in mili ampere
Beta=100;//Common emitter D.C. Current gain
Rc=0.3;// Collector resistance in killo ohms
Rb=Vcc/Ib;
Ic= Beta*Ib;
Vce=Vcc -(Ic*Rc);
S=1+Beta ;
disp(Rb,"Base resistance in killo ohms")
disp(Vce,"Collector to ground voltgae in volts")
disp (S,"The Stability factor")

