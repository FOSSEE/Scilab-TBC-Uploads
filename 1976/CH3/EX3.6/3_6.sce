//To obtain the voltages at the far end of the positive and negative wires
//Page 110
clc;
clear;

Vs=220; // Supply Voltage
//Resistances of the given sections
r1=0.015;
r2=0.035;
r3=0.02;
r4=0.01;
r5=0.025;
r6=0.015;
r7=0.03;
r8=0.01;
r9=0.02;
r10=0.03;
r11=0.04;

//Currents follwing in between the two wires
I1=10;
I2=20;
I3=25;
I4=5;
I5=15;
I6=15;
I7=15;
I8=15;
I9=18;
I10=30;
I11=15;

//Effective resistances for the above currents
R1=r1;
R2=r1+r2;
R3=r1+r2+r3;
R4=r1+r2+r3+r4;
R5=r1+r2+r3+r4+r5;
R6=r1+r2+r3+r4+r5+r6;
R7=r7;
R8=r7+r8;
R9=r7+r8+r9;
R10=r7+r8+r9+r10;
R11=r7+r8+r9+r10+r11;

//Voltage drop in the respective wires
//Outer positive wire
Vop=(I1*R1)+(I2*R2)+(I3*R3)+(I4*R4)+(I5*R5)+(I6*R6);
//Outer Negative wire
Vnp=(I7*R7)+(I8*R8)+(I9*R9)+(I10*R10)+(I11*R11);
// Net drop in neutral wire
Vn=Vop-Vnp;

//Effective drop in the respective wires
//Outer positive wire
Veop=Vop+Vn;
//Outer negative wire
Venp=Vnp-Vn;

//Voltage at far end of the wires
//Positive Wire
Vpf=Vs-Veop;
//Negaitve Wire
Vnf=Vs-Venp;

printf("The voltage drop at the far end of the wires are:\n")
printf(" Positive Wire: %g V\n",Vpf)
printf(" Negative Wire: %g V\n",Vnf)
