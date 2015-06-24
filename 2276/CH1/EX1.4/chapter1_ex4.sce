clc
clear

//input
//AB,BC,CD,DA are arms of a wheatstone bridge
r1=4;//resistance in arm AB in ohms
r2=6;//resistance in arm BC in ohms
r3=5;//resistance in arm CD in ohms
r4=3;//resistance in arm DA in ohms
v=4;//d.c. supply given between points A and C in volt
R=10;//resistance of the detector placed between the points B and D in ohms

//calculations
aIb=v/(r1+r2);//current in arm AB in amperes
aId=v/(r3+r4);//current in arm DA in amperes
aVb=aIb*r1;//voltage drop along arm AB in volts
aVd=aId*r4;//voltage drop across arm AD in volts
dVb=aVb-aVd;//since D is positive with respect to B
e=dVb;// open circuit voltage in volts
r0=((r1*r2)/(r1+r2))+((r3*r4)/(r3+r4));//equivalent resistance in ohms when the supply neglected
I=e/(r0+R);//current through the 10 ohms resistance in amperes

//output
mprintf('the current through the detector will be %3.5f A in the direction from D to B',I)
