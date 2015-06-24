// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-5,Example 14,Page 182
//Title: Power output of turbine
//================================================================================================================
clear 
clc

//INPUT
P=3;//pressure of superheated steam in MPa
T_enter=300;//entrance temperature of superheated steam in degree celsius
T_exit=45;//final temperature at which the steam leaves in degree celsisus
m=1;//mass flow rate of steam in kg/s

//CALCULATION

//From steam tables corresponding to P and T_enter
si=6.5422;//entropy of steam at the entrance in kJ/kgK
hi=2995.1;//entahlpy of steam at the entrance in kJ/kg

//From steam tables corresponding to T_exit
sf=0.6383;//entropy of saturated liquid in kJ/kgK
hf=188.35;//enthalpy of saturated liquid in kJ/kg
sg=8.1661;//entropy of saturated vapour in kJ/kgK
hg=2583.3;//entahlpy of saturayed vapour in kJ/kg

Xe=(si-sf)/(sg-sf);//calculation of quality of steam at the exit (no unit)
he=((1-Xe)*hf)+(Xe*hg);//calculation of enthalpy of steam at the exit in kJ/kg
Ws=-m*(he-hi);//calculation of power output from turbine using the first law of thermodynamics on the control-volume in kW

//OUTPUT
mprintf("\n The power output from the turbine=%0.1f kW\n",Ws);


//===============================================END OF PROGRAM===================================================
