close();
clear;
clc;
Re = 200; //ohm
R1 = 1000; //ohm
R2 = 10*R1; //ohm
Rc = 2000; //ohm
Rl = Rc;
Vbeq = 0.7; //V
B = 100;
Vcc = 15; //V
//(a)
Rb = (R1*R2)/(R1+R2); //ohm
Vbb = R1*Vcc/(R1+R2); //V
Icq = (Vbb-Vbeq)/(Rb/(B+1) + Re); //A
mprintf("(a) Icq = %0.3f mA\n\n",Icq*1000);
//(b)
//KVL around collector circuit with Icq = Ieq
Vceq = Vcc - Icq*(Re+Rc); //V
mprintf("(b) Vceq = %0.2f V\n\n",Vceq);

//(c)
slope1 = 1/Rc + 1/Rl; //S
Rac = 1/slope1;
mprintf("(c) slope of ac load line, slope1 = %d mS\n\n",slope1*1000);

//(d)
slope2 = 1/(Rc+Re); //S
Rdc = 1/slope2;
mprintf("(d) slope of dc load line, slope2 = %0.3f mS\n\n",slope2*1000);
Vcemax = Vceq + Icq*Rac;
Ilm = (Vcemax-Vceq)/Rl; //A
mprintf("(e) peak value of undistorted il, Ilm = %0.3f mA",Ilm*1000);

