close();
clear;
clc;
Rc = 300; //ohm
Re = 200; //ohm
R1 = 2000; //ohm
R2 = 15000; //ohm
Vbeq = 0.7; //V
Vcc = 15; //V
B = 110;
Vcesat = 0;
//(a)
Rb = R1*R2/(R1+R2); //ohm
Vbb = R1*Vcc/(R1+R2);
Icq = (Vbb-Vbeq)/(Rb/(B+1) + Re); //A
Ieq = Icq;
//By KVL around collector circuit and using Icq = Ieq
Vceq = Vcc-Icq*(Rc+Re); //V
mprintf("(a) Maximum symmetrical swing in collective current = %0.2f mA\n\n",Icq*1000);
//(b)
Vcc = 10; //V
Vbb = R1*Vcc/(R1+R2); //V
Icq = (Vbb-Vbeq)/(Rb/(B+1) + Re); //A
Vceq = Vcc - Icq*(Rc+Re);
mprintf("(b) Maximum symmetrical swing in collective current in second case = %0.3f mA",Icq*1000);
