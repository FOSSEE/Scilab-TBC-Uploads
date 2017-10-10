// Determine current through various values of RL

clc;
clear;

Rl=[0 2 5]; // Resistance Vector

//Resistances of the circuit in order from the 40V side.
R1=4;
R2=6;
R3=5;

//Voltage Source
V=40;

i=V/(R1+R2);

Vth=i*R2;

Rth=R3+(R1*R2/(R1+R2));

Cur=(Rth+Rl)/Vth; // Reciprocal of current

printf(' The Current through the Resistance RL = %g, %g, %g ohm is %g A, %g A, %g A respectively \n',Rl(1),Rl(2),Rl(3),1/Cur(1),1/Cur(2),1/Cur(3))


