//Chapter-5, Example 5.5, Page 162
//=============================================================================
clc
clear
//INPUT DATA
V=250;//supply voltage in volts
f=50;//frequency in hz
Vr=125;//voltage across resistance in volts
Vc=200;//voltage across coil in volts
I=5;//current in A
//CALCULATIONS
R=Vr/I;//resistance in ohms
Z1=Vc/I;//impedance of coil in ohms
//Z1=sqrt((R1)^2+(Xl)^2)------eqn(1)
Z=V/I;//total impedance in ohms
//Z=sqrt((R+R1)^2+(Xl)^2)-----eqn(2)
//solving eqn(1)and eqn(2) we get R1 as follows
R1=(((Z)^2-(Z1)^2)-(R)^2)/(2*R);//in ohms
Xl=sqrt((Z1)^2-(R1)^2);//reactance of coil in ohms
P=((I)^2*R1);//power absorbed by the coil in Watts
Pt=((I)^2)*(R+R1);//total power in Watts
mprintf("thus impedance,resistance,reactance are %d ohms,%d ohms,%2.2f ohms respectively\n",Z1,R,Xl);
mprintf("power absorbed and total power are %3.1f W and %3.1f W respectively",P,Pt)

//=================================END OF PROGRAM======================================================================================================

