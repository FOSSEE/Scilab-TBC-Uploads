//Chapter-5, Example 5.38, Page 199
//=============================================================================
clc
clear
//INPUT DATA
Q=45;//quality factor
f1=600*10^3;//freq in Hz
f2=1000*10^3;//freq in Hz
//given new resistance is 50% greater than former.let us consider two reistances as R1=1 ohm and R2=1.5 ohm for ease of calculation.Then
R1=1;//resistance in ohm
R2=1.5;//resistance in ohm
//CALCULATIONS
W1=2*%pi*f1;//angular freq 1 in rad/sec
W2=2*%pi*f2;//angular freq 2 in rad/sec
Q=45;//quality factor
L=(Q*R1)/(W1);//inductance in henry
Q1=(W2*L)/(R2);//new quality factor
mprintf("Thus new quality factor is %d",Q1);
//=================================END OF PROGRAM======================================================================================================
