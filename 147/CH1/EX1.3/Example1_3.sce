close();
clear;
clc;
//Three resistances in parallel 'R1', 'R2', 'R3', Voltage source 'V'
R1 = 5; //ohm
R2 = 10; //ohm
R3 = 20; //ohm
V = 100; //V

//(a)
//current through R1 'I1'
I1 = V/R1; //A
//current through R2 'I2'
I2 = V/R2; //A
//current through R3 'I3'
I3 = V/R3; //A

mprintf("Current through %d ohm resistor, I1 = %d A\n\n",R1,I1);
mprintf("Current through %d ohm resistor, I2 = %d A\n\n",R2,I2);
mprintf("Current through %d ohm resistor, I3 = %d A\n\n",R3,I3);

//(b)
//Total current drawn from source 'I'
I = I1 + I2 + I3; //A
//Power supplied by source 'P'
P = V*I; //W

mprintf("Current drawn from the source, I = %d A\nPower supplied by source, P = %d W",I,P);