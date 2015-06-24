//Chapter-5, Example 5.2, Page 5.7
//=============================================================================
clc
clear

//INPUT DATA
P=8;//Number of poles
f=50;//Frequency in Hz
Z=(36*8);//Number of conductors
q=0.04;//Flux in Wb
kp=1;//Pitch factor
kd=1;//Distribution factor

//CALCULATIONS
Eph=(2.22*kp*kd*f*q*Z);//EMF generated per phase in V

//OUTPUT
mprintf('Induced emf per phase is %3.1f V',Eph)

//=================================END OF PROGRAM==============================
