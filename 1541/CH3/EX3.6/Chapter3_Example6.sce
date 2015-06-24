//Chapter-3, Example 3.6, Page 3.17
//=============================================================================
clc
clear

//INPUT DATA
VL=11000;//Supply line voltage in V
P=12;//Number of poles
f=50;//Supply frequency in Hz
R2=0.2;//Rotor resistance in ohm
X2=1.2;//Rotor reactance at stand still in ohm
N=480;//Full load speed in rpm

//CALCULATIONS
s=(R2/X2);//Slip at maximum torque
Ns=(120*f)/P;//Synchronous speed in rpm
s1=(Ns-N)/Ns;//Slip at full load
T=((R2^2+(s1^2*X2^2))/((2*X2)*(s1*R2)));//Ratio of maximum and full load torque
T1=((R2^2+X2^2)/(2*X2*R2));//Ratio of maximum and starting torque

//OUTPUT
mprintf('a)Slip at maximum torque is %3.2f \nb)Ratio of maximum and full load torque is %3.2f \nc)Ratio of maximum and starting torque is %3.2f',s,T,T1)

//=================================END OF PROGRAM==============================
