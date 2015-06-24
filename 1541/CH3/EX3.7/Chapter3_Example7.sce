//Chapter-3, Example 3.7, Page 3.18
//=============================================================================
clc
clear

//INPUT DATA
P=6;//Number of poles
f=50;//Supply frequency in Hz
R2=0.4;//Rotor reisitance in ohm
X2=4;//Rotor standstill reactance in ohm
T1=2;//Ratio of maximum torque to starting torque

//CALCULATIONS
Ns=(120*f)/P;//Synchronous speed in rpm
Sm=(R2/X2);//Slip at maximum torque
NTM=(Ns*(1-Sm));//Speed of the motor at maximum torque in rpm
T=((R2^2+X2^2)/(2*R2*X2));//Ratio of maximum torque to starting torque
Rext=(sqrt(X2^2/((2*T1)-1))-R2);//Additional resistance required for the ratio of maximum torque to the statring torque to be 2 in ohm

//OUTPUT
mprintf('a)Speed of the motor at maximum torque is %i rpm \n b)Ratio of maximum torque to starting torque is %3.2f \n c)Additional resistance required for the ratio of maximum torque to the starting torque to be 2 is %3.1f ohm',NTM,T,Rext)

//=================================END OF PROGRAM==============================
