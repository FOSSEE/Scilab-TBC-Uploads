clc
clear

//input
//AB,BC,CD,DA are arms of a wheatstone bridge
r1=4;//resistance in arm AB in ohms
r2=6;//resistance in arm BC in ohms
r3=5;//resistance in arm CD in ohms
r4=3;//resistance in arm DA in ohms
v=4;//d.c. supply given between points A and C in volt
R0=10;//resistance of the detector placed between the points B and D in ohms
//a detector is placed between the point B and D

//calculations
// noerton's equivalent circuit method
R1=((r1*r2)/(r1+r2))+((r3*r4)/(r3+r4));// equivalent resistance assuming short circuit between poin A and C in ohms
R2=((r1*r4)/(r1+r4))+((r2*r3)/(r2+r3));//equivalent resistance assuming short circuit between points B and D in ohms
I1=v/R2;// total current in amperes
aIb=v*(r4/(R2*(r4+r1)));//current in arm AB in amperes
aVDb=v*aIb;//voltage drop in arm AB
bVDc=v-aVDb;//voltage drop in arm DC
bIc=bVDc/r2;//currrent in arm BC in amperes
dIb=bIc-aIb;//current in arm DB in amperes
Isc=dIb;//short circuit current in amperes
I=Isc*(R1/(R1+R0));//current through the detector in amperes

//output
mprintf('nortons  equivalent generator produces %3.5f A and has a shunt resistance of %3.3f ohms \n the current through the detector will be %3.3f A',Isc,R1,I)
