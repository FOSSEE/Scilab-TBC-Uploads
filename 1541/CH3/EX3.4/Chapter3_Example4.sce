//Chapter-3, Example 3.4, Page 3.12
//=============================================================================
clc
clear

//INPUT DATA
VL=440;//Supply line voltage in V
P=4;//Number of poles
IL=75;//Line current in A
cosx=0.8;//Power factor
n=0.8;//Efficiency of the motor
s=0.03;//slip of the motor
f=50;//Frequency in Hz

//CALCULATIONS
Pm=(sqrt(3)*VL*IL*cosx*n);//Output power in W
Ns=(120*f)/P;//Synchronous speed in rpm
N=(1-s)*Ns;//Actual speed in rpm

//OUTPUT
mprintf('Shaft output power is %3.0f W\nActual speed is %i rpm',Pm,N)

//=================================END OF PROGRAM==============================
