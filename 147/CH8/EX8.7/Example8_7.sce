close();
clear;
clc;
Ibq = 40*10^(-6); //A
Icbo = 0;
Vbb = 6; //V
Re = 1000; //ohm
B = 80;
Iceo = 0;
Vcc = 15; //V
Rc = 3000; //ohm
Vbeq = 0.7; //for Si transistor

//(a)
a = B/(B+1);
Ieq = Ibq/(1-a); //A
mprintf("(a) Ieq = %0.3f mA\n\n",Ieq*1000);

//(b)
//Applying KVL around the base-emitter loop gives
//Vbb = Ibq*Rb + Vbeq + Ieq*Re;
Rb = (Vbb-Vbeq-Ieq*Re)/Ibq; //ohm
mprintf("(b) Rb = %0.2f k ohm\n\n",Rb/1000);

//(c)
Icq = B*Ibq; //A
//By KVL around collector circuit
Vceq = Vcc-Ieq*Re-Icq*Rc;
mprintf("(c) Vceq = %0.2f V\n\n",Vceq);