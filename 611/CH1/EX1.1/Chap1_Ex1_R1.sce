// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-1,Example 1,Page 6
//Title:Weight of payload
//================================================================================================================
clear 
clc

//INPUT
weight=981; //weight of payload in N
gmoon=1.62;//acceleration due to gravity on the moon in m/s^2
g=9.81;//acceleration due to gravity on earth

//CALCULATION
mass=weight/g;//calculation of mass of the payload in kg (calculated as F=m*g)
weightmoon=mass*gmoon;//calculation of weight of payload on the moon in N

//OUTPUT
mprintf('\n The weight of payload on the moon= %d N',weightmoon);

//===============================================END OF PROGRAM===================================================
