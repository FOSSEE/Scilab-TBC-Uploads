//Emiter voltage Vee, Collector Voltage Vcc, Resistance R
close();
clear;
clc;
Vee = 2;//V
Vcc = 12;//V
Rc = 2000;//ohm
Vceq = -6.4;//V
Vbeq = -0.3;
Vcbq = Vceq - Vbeq;
//From graph
Ieq = 3*10^(-3);//A
Re = (Vee+Vbeq)/Ieq;
mprintf('Re = %0.1f ohm',Re);