

//exapple 4.4 
clc; funcprot(0);
// Initialization of Variable
rhom=1.356*10^4;//density mercury
rhon=1266;//density NaOH
Cd=0.61;
g=9.81;
Cdv=0.98;//coeff. of discharge of venturimeter
Cdo=Cd;//coeff. of discharge of orificemeter
d=6.5/100;
pi=3.14;
A=pi*d^2/4;
Q=16.5/1000;
h=0.2;//head differnce
//calculation
//part1
delP=g*h*(rhom-rhon);
G=rhon*Q;
nun=1/rhon;//specific volume of NaOH
Ao=G*nun/Cd*sqrt(1/(2*nun*delP+(G*nun/Cd/A)^2));//area of orifice
d0=sqrt(4*Ao/pi)
disp(d0*100,"diameter of orifice in (cm):");
//part2
a=(Cdv/Cdo)^2;
disp(a,"ratio of pressure drop ")
