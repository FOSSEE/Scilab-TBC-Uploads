clc;funcprot(0);//Example 9.12
//Initilisation of Variables
l=2;...//Length of the room in m
w=1.5;....//width of the room in m
h=3;....//height of the room in m
T1=500;....//Temparature of ceiling in K
T2=300;....//Temparature of wall in K
e=0.6;....//Emissivity of all surfaces 
R=5.67*10^-8;.....//Stefens boltsman constant 
F12=1;....//shape factor of the room 
//calculations
A1=2*w;....//Area of wall in m^2
A2=(l*l*h)+(l*w*h)+(l*w);.....//Area of room in m^2
Eb1=(R*T1^4)/1000;....//Emissive power of ceiling as per stefen boltsmen law in W/m^2
Eb2=(R*T2^4)/1000;....//Emissive power of wall as per stefen boltsmen law in W/m^2
R1=(1-e)/(A1*e);.....//Resistance of ceiling in sq m
R12=1/(A1*F12);....//Resistance of ceiling to wall in sq m
R2=(1-e)/(A2*e);.....//Resistance of wall in sq m
Rtot=R1+R12+R2;....//Total Resistancein sq m
Q12=(Eb1-Eb2)/Rtot;.....//Rate of heat transfer from ceiling to floor and walls in kW
disp(Q12,"Rate of heat transfer from ceiling to floor and walls in kW:")
