//Chapter-5, Example 5.6, Page 163
//=============================================================================
clc
clear
//INPUT DATA
V=240;//supply voltage in volts
Vl=171;//voltage across inductor in volts
I=3;//current in A
phi=37;//power factor laggging in degrees
//CALCULATIONS
Zl=Vl/I;//impedance of coil in ohms
//Zl=sqrt((R1)^2+(Xl)^2)------eqn(1)
Z=V/I;//total impedance in ohms
//Z=sqrt((R+R1)^2+(Xl)^2)-----eqn(2)
pf=cos(phi*%pi/180);//powerfactor
Rt=pf*Z;//total resistance in ohms//Rt=(R+R1)
//substituting Rt value in eqn(2) we find Xl as follows
Xl=sqrt((Z)^2-(Rt)^2);//reactance of inductor in ohms
//ubstituting Xl value in eqn(1) we find R1 as follows
R1=sqrt((Zl)^2-(Xl)^2);//resistance of inductor in ohms
R=Rt-R1;//resistance of resistor in ohms
mprintf("Thus resistance of resistor  is %2.2f ohms\n",R);
mprintf("Thus resisitance and reactance of inductor are %2.2f ohms and %2.2f ohms respectively",R1,Xl)

//=================================END OF PROGRAM======================================================================================================

