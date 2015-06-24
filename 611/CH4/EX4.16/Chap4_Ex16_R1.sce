// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-4,Example 16,Page 118
//Title:Percentage error
//================================================================================================================
clear 
clc

//INPUT
T0=300;//initial temperature of superheated steam in degree celsius
P0=3;//initial pressure of superheated steam in MPa
Xe=0.85;//quality of steam leaving the turbine (no unit)
Tf=45;//final temperature of steam leaving the turbine in degree celsius
Vi=10;//velocity of steam at the entrance in m/s
Ve=40;//exit velocity of steam in m/s
Zi=10;//elevation at the entrance in m
Ze=4;//elevation at the exit in m
m=1;//mass flow rate of steam through turbine in kg/s
g=9.81;//accleration due to gravity in m/s^2

//CALCULATION
hi=2995.1;//specific enthalpy of superheated steam in kJ/kg obtained from superheated steam tables corresponding to T0 and P0
hf=188.35;//specific enthalpy of saturated liquid in kJ/kg obtained from steam tables corresponding to Tf
hg=2583.3;//specific enthalpy of saturated vapour in kJ/kg obtained from steam tables corresponding to Tf
he=((1-Xe)*hf)+(Xe*hg);//calculation of specific enthalpy of steam at the exit in kJ/kg using Eq.(3.6)
Q=0;//adiabatic process
enthalpy_change=(he*10^3)-(hi*10^3);//calculation of the enthalpy change between the entrance and exit in J/kg
KE_change=((Ve^2)-(Vi^2))/2;//calculation of the kinetic energy change between the entrance and exit in J/kg
PE_change=g*(Ze-Zi);//calculation of the potential energy change between the entrance and exit in J/kg
Ws=Q-(m*(enthalpy_change+KE_change+PE_change)*10^-3);//calculation of power output in kW using Eq.(4.61)
err_KE=((KE_change)/(Ws*10^3))*100;//calculation of percentage error when kinetic energy change is ignored
err_PE=((abs (PE_change)/(Ws*10^3)))*100;//calculation of percentage error when potential energy change is ignored
err=err_KE+err_PE;//calculation of percentage error when both potential kinetic energy changes are ignored

//OUTPUT
mprintf('\n The percentage error when Kinetic energy change is ignored= %0.3f \n',err_KE);
mprintf('\n The percentage error when Potential energy change is ignored= %0.4f \n',err_PE);
mprintf('\n The percentage error when both Kinetic and Potential energy changes are ignored= %f \n',err);

//===============================================END OF PROGRAM===================================================
