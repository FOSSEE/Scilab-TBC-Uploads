//Chapter-5, Example 5.4, Page 161
//=============================================================================
clc
clear
//INPUT DATA
I=10;//given current in A
P=1000;//power in Watts
V=250;//voltage in volts
f=25;//frequency in Hz
//CALCULATIONS
R=P/((I)^2);//resistance in ohms
Z=V/I;//impedance in ohms
Xl=sqrt((Z)^2-(R)^2);//reactance in ohms
L=Xl/(2*%pi*f);//inductance in Henry
Pf=R/Z;//power factor,lagging,pf=cos(phi)
mprintf("thus impedance,resistance,inductance,reactance and powerfactor are %d ohms,%d ohms,%1.3f H,%2.2f ohms and %1.1f respectively",Z,R,L,Xl,Pf);
//=================================END OF PROGRAM======================================================================================================

