//Chapter-3, Example 3.2, Page 109
//=============================================================================
clc
clear

//INPUT DATA
R=150;//Resistance of the coil in ohms
phi1=0.1;//magnetic flux in milli webers
N=500;//no of turns
Rgal=450;//resistance of galvanometer in ohms
dt=0.1;//time in sec required to move coil from given field(m) to another field (m2)
phi2=0.3;//magnetic flux of new field in milli webers
//CALCULATIONS
dphi=phi2-phi1;//change of flux in milli webers
E=N*(dphi/dt)*10^-3;//average induced emf in volts(V)
I=E/(R+Rgal);//average induced current in coil in amperes(A)

//OUTPUT
mprintf('Average induced emf and current are %1.0f V and %1.4f A',E,I);

//=================================END OF PROGRAM==============================
