clc
// initialization of variables

T1=600+273 // initial temperature in kelvin
P1=2 // initial pressure in MPa
P2=10 // final pressure in kPa
mdot=2 // mass flow rate in kg/s
EffT=0.8 // efficiency of turbine 
WdotT=2496 // theoritical power of turbine in kW

//solution
Wdota=EffT*WdotT // actual power output of turbine
h1=3690 // specific enthalpy @ 2MPa and 600 degree celsius
h2=h1-(Wdota/mdot) // final enthalpy from first law of thermodynamics

T2=((h2-2688)/(2783-2688))*(150-100)+100 // by interpolating from steam table @ P2= 10 kPa, h2=2770 
s2=8.46 // final specific entropy by interpolation from steam table

printf("The temperature by interpolation is %.0f degree celsius \n",T2)
printf("The final entropy by interpolation is %.2f kJ/kg.K",s2)
// The temperature and entropy are found by interpolation from steam table and cannot be shown here.


