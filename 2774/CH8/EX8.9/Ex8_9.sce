clc
//solution
// initialization of variables
P=100 // atospheric pressure in kPa
R=0.287 // specific gas constant for air
T1=15+273 // outside temperature in kelvin
phi1=0.4// outside air relative humidity
Qf1=40 // outside air flow rate in m^3/min
T2=32+273 // inside temperature in kelvin
phi2=0.7 // inside air relative humidity
Qf2=20 // outside air flow rate in m^3/min
Ps1=1.7 // saturation pressure @ 15 degree celsius and 40% humidity
Ps2=4.9 // saturation pressure @ 32 degree celsius and 70% humidity

Pv1=Ps1*phi1 // partial pressure of water vapour outside

Pv2=Ps2*phi2 // partial pressure of water vapour inside

Pa1=P-Pv1 //partial pressure of dry air outside
Pa2=P-Pv2 //partial pressure of dry air inside

rhoa1=Pa1/(R*T1) // density of outside air
mdota1=Qf1*rhoa1 // mass flow rate of air outside

rhoa2=Pa2/(R*T2) // density of inside air
mdota2=Qf2*rhoa2 // mass flow rate of inside air
 // using psychrometric chart locating state 1 and 2
h1=37 // specific enthalpy @ DBT 15*C and 40 % humidity
w1=0.0073 // specific humidity @ DBT 15*C and 40 % humidity
h2=110 // specific enthalpy @ DBT 32*C and 70 % humidity
w2=0.0302 // specific humidity @ DBT 32*C and 70 % humidity
ratio=mdota1/mdota2 // ratio of distance between states 
//  using this ratio state 3 is located on psychrometric chart
T3=(mdota1*T1+mdota2*T2)/(mdota1+mdota2)-273 // final temparature in celsius

phi3=65// final relative humidity at T3 from psychrometric chart

printf("The relative humidity is %i %% \n",phi3)
printf(" The resultant temperature is %i degree celsius",T3)







