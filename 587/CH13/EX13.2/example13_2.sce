clear;
clc;

//Example13.2[Fraction of Radiation Leaving through an Opening]
//Given:-
r1=0.1;//Radius of enclosure[m]
L=0.1;//Length of Enclosure[m]
r2=0.05,r3=0.08;//Inner and outer radii of the ring[m]
//Solution:-
//Using Chart in Fig 13.7
F12=0.11;
F13=0.28;
F1_ring=F13-F12;
disp(F1_ring,"The fraction of the radiation leaving the base cyllinder enclosure that escapes through coaxial ring opening at its top surface is")
