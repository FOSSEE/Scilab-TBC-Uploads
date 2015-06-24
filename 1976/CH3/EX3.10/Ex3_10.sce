
//To determine the currents supplied to the ring main from A and B
//Page 115
clc;
clear;

//Currents in the ring scheme going clockwise
I1=50;
I2=15;
I3=25;
I4=10;
It = I1+I2+I3+I4; // Total Current
//Resistances of the respective segments going clockwise
R1=0.1;
R2=0.12;
R3=0.04;
R4=0.08;
R5=0.06;
R6=0.02;

Ra=0.04; //Resistance at A;
Rb=0.06; //Resistance at B;

// Va=Vb; Net Voltage is Zero
//Dividing the total current from A as x and y
//Taking voltage drops in clockwise direction and anticlockwise directions
// We get two simultaneous equations
// 3.2x + y = 120
// x + 3y = 114
R=[3.2,1;1,3];
V=[120;114];
I=inv(R)*V;

//To calculate and seperate the respective currents from the above matrix eqution
x=I(1);
y=I(2);
Ia=x+y;
Ib=It-Ia;

printf('a) When Va = Vb; Ia = %g A and Ib =%g\n',Ia,Ib) 

// Va+5=Vb; Net Voltage is 5V
//Dividing the total current from A as x and y
//Taking voltage drops in clockwise direction and anticlockwise directions
// We get two simultaneous equations
// 3.2x + y = 120 -(5*NetVoltage) = 70
// x + 3y = 114 -(5*NetVoltage) = 64
R=[3.2,1;1,3];
V=[70;64];
I=inv(R)*V;

//To calculate and seperate the respective currents from the above matrix eqution
x=I(1);
y=I(2);
Ia=x+y;
Ib=It-Ia;

printf('b) When Va + 5 = Vb; Ia = %g A and Ib =%g\n',Ia,Ib) 

//Highly Accurate Answers, Text Book answers are rounded off.
