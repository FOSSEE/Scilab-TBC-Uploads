//Chapter-5, Example 5.7, Page 164
//=============================================================================
clc
clear
//INPUT DATA
V=100;//supply voltage in volts
//for COIL A
f=50;//frequency in Hz
I1=8;//current in A
P1=120;//power in Watts
//for COIL B
I2=10;//current in A
P2=500;//power in Watts
//CALCULATIONS
//FOR COIL A
Z1=V/I1;//impedance of coil A in ohms
R1=P1/(I1)^2;//resistance of coil A in ohms
X1=sqrt(((Z1)^2-(R1)^2));//reactance of coil A in ohms
//FOR COIL B
Z2=V/I2;//impedance of coil B in ohms
R2=P2/(I2)^2;//resistance of coil B in ohms
X2=sqrt(((Z2)^2-(R2)^2));//reactance of coil B in ohms
//When both COILS A and B are in series
Rt=R1+R2;//total resistance in ohms
Xt=X1+X2;//total reactance in ohms
Zt=sqrt((Rt)^2+(Xt)^2);//total impedance in ohms
It=V/Zt;//current drawn in A
P=((It)^2)*(Rt);//power taken in watts
mprintf("Thus current drawn and power taken in watts are %2.2f A and %3.2f W respectively",It,P);
//=================================END OF PROGRAM======================================================================================================

