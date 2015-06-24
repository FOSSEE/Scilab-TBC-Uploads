//Chapter-3, Example 3.1, Page 3.6
//=============================================================================
clc
clear

//INPUT DATA
N=900;//Rotor speed in rpm
f=50;//Power supply frequency in Hz
P=6;//No. of poles

//CALCULATIONS
Ns=(120*f)/P;//Synchronous speed in rpm
s=((Ns-N)/Ns)*100;//%slip 
f1=(s*f)/100;//Frequency of rotor current in Hz

//OUTPUT
mprintf('Slip of a 3 phase motor is %i percent\nFrequency of rotor current is %i Hz',s,f1)

//=================================END OF PROGRAM==============================
