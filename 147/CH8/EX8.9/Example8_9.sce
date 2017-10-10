close();
clear;
clc;
B = 80;
Vceq = 8; //V
Rc = 3000; //ohm
Vcc = 15; //V
Vbeq = 0.7; //for Si transistor

//(a) by KVL around collector circuit
Icq = (Vcc-Vceq)/Rc; //A
mprintf("(a) Icq = %0.3f mA\n\n",Icq*1000);

//(b)if leakage current is neglected
Ibq = Icq/B; //A
Rb = (Vcc-Vbeq)/Ibq; //ohm
mprintf("(b) Rb for Si device = %0.1f k ohm\n\n",Rb/1000);

//(c)
Vbeq = 0.3; //for Ge transisor
Rb = (Vcc-Vbeq)/Ibq;
mprintf("(c) Rb for Ge device = %0.1f k ohm",Rb/1000);
