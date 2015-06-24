clc
//solution
// initialization of variables
T1=5+273 // outside air temperature in kelvin
P=100 // pressure in kPa
Ra=0.287 // specific gas constant for air
phi=0.7 // relative humidity outside
Qf=50/60 // volume flow rate in m^3/sec
Pg1=0.872 // saturation pressure at 278 K
Pv1=phi*Pg1 // partial pressure of water vapour
Pa1=P-Pv1 // partial pressure of air

rhoa=Pa1/(Ra*T1) // density of dry air

mdota= Qf*rhoa // mass flow rate of dry air

// using psychrometric chart at T1=5*C and phi1=70% 
h1=14 // inlet enthalpy in kJ/kg
h2=35 // enthalpy after heating in kJ/kg

Qdot=mdota*(h2-h1) // heat transfer rate
// from psychrometric chart for T=25 *C and 35 kJ/kg enthalpy
phi2=19 // realtive humidity
printf("The heat transfer rate is %0.1f kJ/s \n",Qdot)
printf("The final relative humidity is %i %% ",phi2)







