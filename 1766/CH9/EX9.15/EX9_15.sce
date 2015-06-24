clc;funcprot(0);//Example 9.15
//Initilisation of Variables
l=2,b=2;....//Sides of room in m
T1=-23+273;....//Uniform temparature of floor & surface in K
T2=-73+273;....//Temparature of wall & ceiling in K
e1=0.9;....//Emissivity of floor & surface
e2=0.8;....//Emissivity of ceiling
R=5.67*10^-8;.....//Stefens boltsman constant 
F12=1;....//shape factor of the room 
//calculations
A=l*b;...//Area in m
R1=(1-e1)/(A*e1);.....//Resistance of floor & surface in sq m
R12=1/(A*F12);....//Resistance of both in sq m
R2=(1-e2)/(A*e2);.....//Resistance wall & ceiling of wall in sq m
Rtot=R1+R12+R2;....//Total Resistancein sq m
Q12=(R*(T1^4-T2^4))/Rtot;.....//Rate of heat loss from the floor in W
disp(Q12,"Rate of heat loss from the floor in W:")
