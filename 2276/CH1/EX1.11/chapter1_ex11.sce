clc
clear

//input
//AB,BC,CD,DA forms an unbalanced wheatstone's bridge
r1=2;//resistance in arm AB in ohms
r2=5;//resistance in arm BC in ohms
r3=6;//resistance in arm CD in ohms
r4=2;//resistance in arm DA in ohms
r5=10;//resistance of detector placed between the points B and D
v=4;//batterry supplying d.c. voltage in volts which is placed between points A and C
r0=0.2;// internal resistance of the battery in ohms

//calculations
//AB,BC and BD are cosidered to be in star connection with B as star point
Y1=1/r1;//conductacne of r1 in seimens
Y2=1/r2;//conductance of r2 in seimens
Y3=1/r5;//conductance of r5 in seimens
//after delta conversion
R1=1/((Y1*Y2)/(Y1+Y2+Y3));//resistance between points A and B in ohms
R2=1/((Y2*Y3)/(Y1+Y2+Y3));//resistance between points C and D in ohms
R3=1/((Y1*Y3)/(Y1+Y2+Y3));//resistance between points D and A in ohms
Rad=(r4*R3)/(r4+R3);//effective resistance of arm AD in ohms
Rdc=(r3*R2)/(r3+R2);//effective resistance of arm DC in ohms
Radc=(Rad+Rdc);//effective resistance if arms AD and DC in ohms
R=r0+((R1*Radc)/(R1+Radc));// total resistance of hte circuit in ohms
I=v/R;//total current in the circuit in amperes
I1=I*(R1/(R1+Radc));//current in arm AD in amperes
I2=I-I1;//current in arm AB in amperes
V1=I1*r4;//voltage across arm AD in volts
V2=I2*r1;//voltage across arm AB in volts
V3=V1-V2;//voltage across arm BD in volts and B is positive to D
I3=V3/r5;//current in arm BD in amperes

//output
mprintf('the current in the detector is %3.3f A',I3)
