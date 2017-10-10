close();
clear;
clc;
alpha = 0.99;
Iceo = 0;
Vee = 4;//V
Vcc = 12;
Vbeq = -0.7;
Ieq = 1.1;//mA
Vceq = -7;//V
//By KVL around transistor terminals
Re = (Vee+Vbeq)/Ieq;
Vcbq = Vceq-Vbeq;
Icq = alpha*Ieq;
//By KVL around base-collector loop
Rc = (Vcc+Vcbq)/Icq;
mprintf('(a): Re = %0.0f ohm\n(b): Rc = %0.3f k ohm',Re,Rc);
