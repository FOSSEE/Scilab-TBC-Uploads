//===========================================================================
//chapter 5 example 12
clc;clear all;

//variable declaration
V     = 0.1;            //voltage in V
R     = 200;            //coil resistance in  Ω
B     = 0.2;            //flux density in Wb/m^2
l       = 0.03;         //length in m 
r      = 0.025;         //width in m
N    = 100;
Tc    = 25*10^-7;	//torque in Nm per degree
theta = 100;            //deflaction in °
p         = 1.7*10^-8;	//specific resistance of coil in Ω-m
d       = 30;
d1       = 25;
 

//calculations
i    = V/(R);                   //current in A
Td   = N*B*i*l*r;               //deflecting Torque in Nm
K    = Td/(theta);              //control constant of spring in N-m
l     = (d+d1)*2*100*10^-3;      //length of copper coil in m
R1     = (R*20)/(100);
a     = (p*l)/(R1);         //area of x-section of copper wire inm^2
D     = sqrt((4*a)/(%pi));          //diameter of wire in mm

//result

mprintf("diameter fo wire = %3.3f mm",(D*10^3));


