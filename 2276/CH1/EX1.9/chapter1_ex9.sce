clc
clear

//input
//AB,BC,CD,DA are arms of a wheatstone bridge
r1=5;//resistance in arm AB in ohms
r2=20;//resistance in arm BC in ohms
r3=15;//resistance in arm CD in ohms
r4=4;//resistance in arm DA in ohms
v=4;//d.c. supply given between points A and C in volt
r0=0.5;// internal resistances pf the d.c. supply in ohms
r5=15;//resistance in arm BD in ohms

//calculations
//BCD is replaced by equivalent star connection
//assume N as star piont after conversion
bRn=(r2*r3)/(r3+r2+r5);//resistance in arm BN in ohms
cRn=(r2*r5)/(r3+r2+r5);//resistance in arm CN in ohms
dRn=(r5*r3)/(r3+r2+r5);//resistance in arm DN in ohms
R=r0+cRn+(((r1+bRn)*(r4+dRn))/(r1+bRn+r4+dRn));//total resistance in ohms after conversion
I=v/R;//totalcurrent supply in amperes
I1=(v/R)*((r4+dRn)/(r1+bRn+r4+dRn));//current between points A and B in amperes
I2=I-I1;//current between points A and D in amperes
V1=I1*r1;//voltage drop across r1 in volts
V2=I2*r4;//voltage drop across r4 in volts
V3=V2-V1;//voltage drop across r5 in volts and B is positive to D
I3=V3/r5;//current between points B and D in amperes
I4=I1-I3;//current between points B and C in amperes
I5=I2+I3;//current between points D and C in amperes

//output
mprintf('the currents in each part of the circuit are \n It= %3.3f A \n aIb= %3.3f A \n aId= %3.3f A \n bId= %3.3f A \n bIc= %3.3f A \n dIc= %3.3f A',I,I1,I2,I3,I4,I5)
