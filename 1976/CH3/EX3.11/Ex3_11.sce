
//To Compare the volume of copper required
//Page 116
clc;
clear;
//Unknown Resistances
r=poly(0,'r');
r1=poly(0,'r1');
//Lengths of the segements of the ring scheme
L1=100;
L2=200;
L3=200;
L4=150;
L5=150;
//Currents taken by respective loads
I1=40;
I2=20;
I3=100;
I4=40;
It=I1+I2+I3+I4;//Total Current

//Without Interconnector
//Let x be the current flowing through the entire ring
x=poly(0,'x');
Eq=(L1*x)+(L2*(x-I1))+(L3*(x-I1-I2))+(L4*(x-I1-I2-I3))+(L4*(x-I1-I2-I3-I4)); //Polynomial Equation to find x

x=roots(Eq);
x1=It-x; //Current flowing in the other direction

Vac1=((x1*L5)+((x1-I4)*L4))*r; // Voltage across AC without the connector
MVac1=((x1*L5)+((x1-I4)*L4)); // Magnitude of Vac1;

//With Interconnector
//Considering x amount of current to flow clockwise through segment AE
//Considering y amount of current to flow anticlockwise through segment AB
//Considering 200-(x+y) amount if current to flow through the segment AC
// Mesh Analysis of ABCDE gives 5x - 3y = 140;
// Mesh Analysis of ABC gives 5x + 11y = 1120;
R=[5,-3;5,11];
V=[140;1120];
I=inv(R)*V;
x=I(1);
y=I(2);
Vac2=(It-(x+y))*250*r1; // Voltage across AC with connector
MVac2=(It-(x+y))*250; // Magnitude of Vac2;
printf('The Voltage drop across AC in both case is the same\n')
disp(Vac2,'Is Equal to',Vac1)
printf('\n \n')
//To Compute the Numerical Values of the Ratio of resistances
RatioA = MVac1/MVac2;

disp(RatioA,'is',r1,'divided by',r)

//Effective Length of both the cases
Leff=L1+L2+L3+L4+L5;
LeffC=Leff+250;
//Volume is Length * Area
RatioV=Leff*RatioA/LeffC;

printf('\nThe Volume of copper without the connector is %g times the volume required with connector\n',RatioV)
