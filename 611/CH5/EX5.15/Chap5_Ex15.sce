// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-5,Example 15,Page 183
//Title: Exit velocity of steam
//================================================================================================================
clear 
clc

//INPUT
Pi=3;//pressure of dry saturated steam when it enters the nozzle in bar
Pe=2;//pressure of dry saturated steam at the exit in bar

//CALCULATION
//From steam tables corresponding to Pi
si=6.9909;//entropy of steam at the entrance in kJ/kgK
hi=2724.7;//entahlpy of steam at the entrance in kJ/kg

//From steam tables corresponding to Pe
sf=1.5301;//entropy of saturated liquid in kJ/kgK
hf=504.70;//enthalpy of saturated liquid in kJ/kg
sg=7.1268;//entropy of saturated vapour in kJ/kgK
hg=2706.3;//entahlpy of saturayed vapour in kJ/kg

se=6.9909;//From Eq.(5.67), se=si (i.e. entropy of the fluid remains constant), where se is in kJ/kgK
Xe=(se-sf)/(sg-sf);//calculation of the quality of steam at the exit (no unit)
he=((1-Xe)*hf)+(Xe*hg);//calculation of enthalpy of steam at the exit in kJ/kg
Ve=sqrt (2*(hi-he)*10^3);//calculation of exit velocity of steam in m/s by applying the first law of thermodynamics

//OUTPUT
mprintf("\n The exit velocity of steam=%f m/s\n",Ve);


//===============================================END OF PROGRAM===================================================
