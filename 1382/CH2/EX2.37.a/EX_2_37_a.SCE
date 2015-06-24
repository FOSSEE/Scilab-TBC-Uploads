// Example 2.37.a:baising component
clc;
clear;
close;
Vcc=12;// Colector voltage in volts
Beta=180;
Ieq=2;// Emiier current in mA
Rc=1;// Collector resistance in killo ohms
Vbe=0.6;// Base to emitter voltage in volts
Vceq=6;// Collector to emitter voltage in volts
Ic= (Vcc-Vceq)/Rc;
Ib=Ic/Beta;
Rb=(Vcc-Vbe)/Ib;
disp (Ic," Collector current in fixed bias case in mA")
disp(Ib,"Base current in fixed bias case in mA")
disp (Rb,"Base resistance in fixed bias case in killo ohms")
