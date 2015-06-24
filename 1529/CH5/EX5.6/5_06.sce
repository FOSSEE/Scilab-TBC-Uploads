//Chapter 5, Problem 6, Figure 5.13
clc;
//Potential difference across R1 is the same as the supply voltage V
R1=5;
R3=20;
I=11;
I1=8;
//Hence supply voltage is
V=R1*I1;
I3=V/R3;
//Reading on ammeter,
printf("Reading on ammeter = %f A\n\n\n",I3);
I2=I-I1-I3;
R2=V/I2;
//Current flowing through R2
printf("Resistance R2 = %f ohm\n\n\n",R2);
