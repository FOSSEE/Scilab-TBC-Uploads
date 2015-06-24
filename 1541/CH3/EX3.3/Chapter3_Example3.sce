//Chapter-3, Example 3.3, Page 3.7
//=============================================================================
clc
clear

//INPUT DATA
P=6;//Number of poles
f=50;//Supply frequency in Hz
f1=3;//Rotor current frequency in Hz

//CALCULATIONS
s=(f1/f)*100;//Slip of the motor in %
Ns=(120*f)/P;//Synchronous speed in rpm
N=(Ns-((s*Ns)/100));//Speed of the motor in rpm

//OUTPUT
mprintf('Slip of the motor is %i percent\nSpeed of the motor is %i rpm',s,N)

//=================================END OF PROGRAM==============================
