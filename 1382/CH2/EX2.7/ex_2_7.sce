// Example 2.7: Calculate the collector to emitter voltage(Vce) and Collector current (Ic)
clc;
clear;
Vcc= 12 ;// as Ic=0 so Vce=Vcc (In volts)
Rc= 3;// Collector Resistance in killo oms
Ic=Vcc/Rc; // Collector Current in Amperes
Vce=Vcc;
disp(Vce,"Colletor to emitter voltage (in volts)")
disp(Ic," Collector current (in mA)")
