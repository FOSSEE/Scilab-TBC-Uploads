close();
clear;
clc;
Ibq = 30*10^(-6); //A
Re = 1000; //ohm
Vcc = 15; //V
Vcesat = 0.2; //V
B = 80;
a = B/(B+1);
Icq = B*Ibq; //A
Ieq = Icq/a; //A
//KVL around collector circuit leads to minimum value of Rc
Rc = (Vcc-Vcesat - Ieq*Re)/Icq; //ohm
mprintf("Minimum value of Rc to maintain the transistor quiescent point at saturation, Rc = %0.3f k ohm",Rc/1000);