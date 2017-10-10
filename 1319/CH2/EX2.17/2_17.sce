//To determine the value of RL for Max power transfer

clc;
clear;

Vs=10/sqrt(2); // RMS Value of Voltage

//Resistances of the circuit from the Source side
R1=10;
R2=15;
R3=20;
R4=5;
R5=10;

Ref1=R3+(R1*R2/(R1+R2));
Ref2=R5+(Ref1*R4/(Ref1+R4));

Rab=Ref2;

// Characteristic Loop Equation of the first two loops for current flowing in clockwise direction
//25i1-15i2 = 10/(2^0.5)
//-15i1+40i2 = 0

Z=[10 25;-15 40];
V=[Vs;0];
I=inv(Z)*V;
i1=I(1);
i2=I(2);

Vth=i2*R4;

Powtrns=(Vth^2)/(4*Rab);

printf('The value of resistance RL for maximum power transfer = %g ohms\n',Rab)
printf('The value of power transfered = %g mW\n',Powtrns*1000)

