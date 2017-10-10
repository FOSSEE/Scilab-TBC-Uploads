//To determine current in RL using nortons theorem

clc;
clear;

//Resistances of the circuit in order from the 40V side.
R1=4;
R2=6;
R3=5;

//Voltage Source
V=40;

I=V/(R1+(R2*R3/(R2+R3)));

Ieq=I*(R2/(R2+R3));

Rth=R3+(R1*R2/(R1+R2));

Rl=[0 2 5];

Req=Rth+Rl; // Sum of resistances of Rth and each of Rl

//Currents for different values of Rl
I0=Ieq*Rth/Req(1);
I2=Ieq*Rth/Req(2);
I5=Ieq*Rth/Req(3);

printf('The Current through the resistance RL = %g ohms is %g A\n',Rl(1),I0)
printf('The Current through the resistance RL = %g ohms is %g A\n',Rl(2),I2)
printf('The Current through the resistance RL = %g ohms is %g A\n',Rl(3),I5)
