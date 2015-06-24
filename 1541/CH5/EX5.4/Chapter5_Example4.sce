//Chapter-5, Example 5.3, Page 5.7
//=============================================================================
clc
clear

//INPUT DATA
Eph=(6.6*10^3)/sqrt(3);//Phase voltage in V
Isc=145;//Short circuit current in A
Ra=1;//Resistance of stator winding in ohm

//CALCULATIONS
Zs=(Eph/Isc);//Synchronous impedence in ohm
Xs=sqrt(Zs^2-Ra^2);//Synchronous reactance in ohm

//OUTPUT
mprintf('Synchronous reactance is %3.2f ohm',Xs)

//=================================END OF PROGRAM==============================
