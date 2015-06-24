//chapter-4 page 141 example 4.1
//==============================================================================
clc;
clear;

d=0.0049;//Diameter of inner conductor in met 
D=0.0110;//Inner Diameter of outer conductor in met
er=2.3;//Polyethylene dielectric
c=3*10^8;//Velocity of Light in m/sec

//CALCULATIONS
x=log(D/d);
L=(2*10^(-1)*x);//Inductance per unit lengths in microH/m
C=(55.56*(er/x));//The Capacitance per unit lengths in picoF/m
R0=(x*(60/sqrt(er)));//The Characteristic Impedance in ohms
V=(c/sqrt(er))/(10^3);//The Velocity of propagation in Km/s

//OUTPUT
mprintf('\nInductance per unit lengths is L=%1.5f microH/m \nThe Capacitance per unit lengths is C=%2.2f picoF/m \nThe Characteristic Impedance is R0=%2.2f ohms \nThe Velocity of propagation is V=%6.2f Km/s',L,C,R0,V);

 //=========================END OF PROGRAM===================================================
