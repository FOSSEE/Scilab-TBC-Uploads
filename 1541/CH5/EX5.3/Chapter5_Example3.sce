//Chapter-5, Example 5.3, Page 5.7
//=============================================================================
clc
clear

//INPUT DATA
P=8;//Number of poles
EL=11000;//Line voltage of the alternator in kV
Eph=(EL/sqrt(3));//Phase voltage per pole in V
kp=1;//Pitch factor
kd=0.98;//Distribution factor
q=0.17;//Flux in Wb
f=50;//Frequency in Hz

//CALCULATIONS
Z=(Eph/(2.22*kp*kd*f*q));//Number of conductors per phase

//OUTPUT
mprintf('Number of conductors per phase is %3.0f',Z)

//=================================END OF PROGRAM==============================
