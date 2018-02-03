//===========================================================================
//chapter 5 example 33

clc;
clear all;

//variable declaration
//x = dC/d(theta)
//Td        = (1/2)*(V^2)*(dC/d(theta))
x       = 0.5*10^-12;              //dC/d(theta) in pF/degree
y       = 1.5*10^-12;              //dC/d(theta) in pF/degree
T       = 8*10^-6;          //torison constant in Nm
N1       =100;
N2       =35;

//calculations
x1      = x*(180/%pi);            //dC/d(theta) in pF/radian
y1      = y*(180/%pi);            //dC/d(theta) in pF/radian
//Td        = Tc = T*N*(%pi/180)
Td          = T*N1*(%pi/180);            //deflecting torque in N-m
V1           = sqrt((2*Td)/x1);          //voltage required in V
Td1          = T*N2*(%pi/180);            //deflecting torque in N-m
V2           = sqrt((2*Td1)/y1);          //voltage required in V

//result
mprintf("voltage deflection at 100 = %3.0f V",V1);
mprintf("\nvoltage deflection at 100 = %3.0f V",V2);


