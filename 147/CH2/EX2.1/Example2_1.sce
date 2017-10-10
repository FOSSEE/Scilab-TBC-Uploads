close();
clear;
clc;
//Three resistances 'R1', 'R2', 'R3' connected in parrallel
R1 = 2100; //ohm
R2 = 2100; //ohm
R3 = 2100; //ohm
V = 210; //V
Req = 1/((1/R1)+(1/R2)+(1/R3));

//(a)
//total current 'I'
I = V/Req;
mprintf("The total current, I = %0.1f A\n\n",I);

//(b)
//current through each resistor
I1 = V/R1;
I2 = V/R2;
I3 = V/R3;
mprintf("The current through %d ohm resistor is %0.1f A\nThe current through %d ohm resistor is %0.1f A\nThe current through %d ohm resistor is %0.1f A\n\n",R1,I1,R2,I2,R3,I3);

//(c)
//total power dissipated in resistors 'P'
P = V*I;
mprintf("Total power dissipated in resistors, P = %d W",round(P));

