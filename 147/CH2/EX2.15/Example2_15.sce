close();
clear;
clc;
Vs = 100; //V
Is = 10; //A
R1 = 5; //ohm
R2 = 10; //ohm
R3 = 30; //ohm
R4 = 5; //ohm
V2 = 90; //V
R = 20;
//When all current sources are open circuited and voltage sources are short circuited
R20 = (R1+R2)*R3/(R1+R2+R3); 
Rn = R20;
//current contribution due to 100 V source
In1 = Vs/R3;
//current contribution due to 10 A source
In2 = Is*(R1)/(R1+R2); //A
//by supersition principle 'In'
In = In1+In2; //A
//resistance seen by voltage source,  'Re'
Re1 = (R1+R2)*R3/(R1+R2+R3) + R4;
I1 = V2/Re1;
//by current division, ammeter reading 'Ia'
Ia = R3*I1/(R1+R2+R3);
Re2 = (R1+R2) + (R3*R4)/(R3+R4); //ohm
I2 = V2/Re2; //A
//current in 20 ohm resistor 'I20'
I20 = In*(R2/(R2+R)); //A
mprintf("Current in 20 ohm resistance, I20 = %0.2f A",I20);