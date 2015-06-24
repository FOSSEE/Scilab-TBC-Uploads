//chapter-4 page 142 example 4.4
//==============================================================================
clc;
clear;

b=0.3175;//Distance between ground planes of strip line in cm
d=0.0539;//Diameter of circular conductor in cm
er=2.32;//Dielectric Constant 
c=3*10^8;//Velocity of Light in m/sec

//CALCULATION
Z0=((60/sqrt(er))*log((4*b)/(d*(%pi))));//Characteristic Impedance in ohms
V=(c/sqrt(er))/(10^3);//The Velocity of propagation in Km/s

//OUTPUT
mprintf('\nCharacteristic Impedance is Z0=%2.2f ohms \nThe Velocity of propagation is  V=%5.2f Km/s',Z0,V);

//=========================END OF PROGRAM===================================================
