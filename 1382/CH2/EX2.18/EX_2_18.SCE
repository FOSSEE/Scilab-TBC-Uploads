// Example 2.18: Calculate base current ,collector current , Collector to emitter voltage ,colletcor voltage ,base voltage and collector to base voltage
Vcc=15;// Colector voltage in volts
Rb= 180;// in kilo ohms
Beta=100;//Common emitter D.C. Current gain
Rc=1.5;// Collector resistance in killo ohms
Vbe= 0.7;// Base to emitter voltage in volts
Ib= ((Vcc-Vbe)/Rb); //in milli amperes
Ic=Beta*Ib;//in milli ampere
Vce= Vcc-(Ic*Rc); //Colector to emitter voltage in volts
Vc=Vce;
Vb=Vbe;
Vcb=Vc-Vb;
disp (Ib,"base current in milli Ampere")
disp (Ic,"Collector current in milli Ampere")
disp(Vce,"Coolector to emitter voltage In Volts")
disp(Vc,"Coolector voltage In Volts")
disp(Vb,"Base voltage In Volts")
disp(Vcb,"Coolector to base voltage In Volts")

