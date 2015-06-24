// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-4,Example 17,Page 119
//Title:Exit velocity
//================================================================================================================
clear 
clc

//INPUT
Pi=5;//pressure of dry saturated steam at the entrance in bar
Pe=2;//pressure of dry saturated steam at the exit in bar
Vi=3;//velocity of dry saturated steam at the entrance in m/s
m=1;//flow rate of steam through the nozzle in kg/s
g=9.81;//acceleration due to gravity in m/s^2

//CALCULATION
hi=2747.5;//specific enthalpy in kJ/kg of the dry saturated steam at the entrance taken from steam tables corresponding to Pi
he=2706.3;//specific enthalpy in kJ/kg of the dry saturated steam at the exit taken from steam tables corresponding to Pe
ve=0.8854;//specific volume in m^3/kg of the dry saturated steam at the exit taken from steam tables corresponding to Pe
Zi=0;//assuming that the nozzle is horizontal
Ze=0;//assuming that the nozzle is horizontal
Q=0;//adiabatic process
Ws=0;//since no shaft work is done 
Ve=sqrt (2*(((Q-Ws)/m)-(g*(Zi-Ze))-((he*10^3)-(hi*10^3)))+(Vi^2));//calculation of velocity at the exit in m/s using Eq.(4.61)
A=(m*ve)/Ve;//calculation of cross sectional area of the nozzle at the exit in m^2

//OUTPUT
mprintf('\n The velocity of dry saturated steam at the exit= %0.2f m/s\n',Ve);
mprintf('\n The cross sectional area of the nozzle at the exit= %0.3e m^2\n',A);

//===============================================END OF PROGRAM===================================================

