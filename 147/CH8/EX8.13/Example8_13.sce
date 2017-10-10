close();
clear;
clc;
Iceo = 0;
Vcesat = 0;
hfe = 100; 
Rc = 2000; //ohm
Vcc = 12; //V
Vbeq = 0.7; //V
Vceq = Vcc/2;
Ibq = (Vcc-Vceq)/((hfe+1)*Rc); //A
//by KVL around transistor terminals
Rf = (Vceq-Vbeq)/Ibq; //ohm
mprintf("Rf for maximum symmetrical swing = %0.1f k ohm",Rf/1000);