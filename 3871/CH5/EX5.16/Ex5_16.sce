//===========================================================================
//chapter 5 example 16

clc;clear all;

//variable declaration
theta     = 90;         //full-deflection in  °
Td        = 0.4*10^-4;          //full-scale deflecting torque in Nm
I         = 0.05;       //current in A
M         = 0.25;           //initial inductance in H
V         = 50;         //voltage in V
I         = 0.05;           //current in A
f         =50;          //frequency in Hz
V2        = 25;
R        = 1000;


//calculations
//dM/dtheta = x
x     = (Td/(I^2));        //change in inductance in H
dM     = (Td/(I^2))*((theta*%pi)/(180));           //change in inductance in H
M1     = M+dM;          //total mutual inductance in H
R        = V/(I);           //the resistance of voltmeter in Ω
Z        =sqrt((R**2)+((2*%pi*f*M1)**2));		//toatal impedance in  Ω
V1     = (V/(Z))*R;         //voltmeter reading in V
d       = V-V1;         //difference in reading in  V
I1       = V2/(R);          //current through instrument in A
theta1    = ((theta*%pi)/(180))*((I1/(I))^2);          //defelction 
M2     = M+(x*theta1);          //total mutual inductance in H
Z1    = sqrt((R**2)+((2*%pi*f*M2)**2));        //toatal impedance in  Ω
V21     = (V2*R)/(Z1);          //voltmeter reading in V
d1       = V2-V21;          //difference in voltmeter reading in V

//result    
mprintf("impedancewhile measuring the voltage = %3.3f Ω",Z1);
mprintf("\ndifference in reading = %3.1f V",d);
mprintf("\ndifference in reading  when 25v is used = %3.2f V",d1);
