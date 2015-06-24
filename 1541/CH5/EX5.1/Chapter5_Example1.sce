//Chapter-5, Example 5.1, Page 5.6
//=============================================================================
clc
clear

//INPUT DATA
f=50;//Frequency in Hz
Z=200;//Number of conductors
kp=1;//Pitch factor
kd=0.96;//Distribution factor
q=0.05;//Flux in Wb

//CALCULATIONS
Eph=(2.22*kp*kd*f*q*Z);//EMF generated per phase in V
LV=(Eph*sqrt(3));//Line voltage in V

//OUTPUT
mprintf('(i)Emf generated per phase is %3.1f V \n(ii)Line voltage is %3.1f V',Eph,LV)

//=================================END OF PROGRAM==============================
