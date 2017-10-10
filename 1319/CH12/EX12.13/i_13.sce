// To Determine the voltage and branch currents in a cicuit with resistors connected in parallel

clc;
clear;

R1=750;
R2=600;
R3=200;

C1=1/R1;
C2=1/R2;
C3=1/R3;

C= C1+C2+C3;// Total Conductance

I=1;

// 1/C is total resistance R, We use Ohm's Law to find the voltage applied.

V=I/C;// V=I*R

// Branch Currents
I1=V/R1;
I2=V/R2;
I3=V/R3;

disp('volts',V,'The applied voltage = ')
disp('amperes',I1,'The Current through 750 ohm Resistor =')
disp('amperes',I1,'The Current through 600 ohm Resistor =')
disp('amperes',I1,'The Current through 200 ohm Resistor =')
disp('amperes, Hence Verified.',(I1+I2+I3),'The Total Current through the circuit =') 
