clc
// initialization of variables

T2=250 // temperature of steam in degree celsius
mdot2=0.5 // mass flow rate of steam in kg/s
T1=45 // temperature of water in degree celsius
mdot1=4 // mass flow rate of water in kg/s
P=600 // pressure in kPa


mdot3=mdot1+mdot2 // by mass balance

h2=2957 // specific enthalpy in kJ/kg of steam @ 600 Kpa from steam table
h1=188.4 // specific enthalpy in kJ/kg  of water @ 600 Kpa from steam table

h3=(mdot1*h1+mdot2*h2)/mdot3 // specific enthalpy in kJ/kg at exit

// by interpolation from saturated steam table
T3=(h3-461.3)*10/(503.7-461.3)+110 // temperature of mixture

sf3=1.508 // entropy of saturated liquid in kJ/kg.K at 600Kpa and T3 temperature from steam table
s3=sf3 
s2=7.182 // entropy of superheated steam in kJ/kg.K @ 600Kpa from steam table
s1=0.639 // entropy of entering water in kJ/kg.K at T= 45 degree celsius

sigmaprod=mdot3*s3-mdot2*s2-mdot1*s1
printf("The rate of entropy production is %0.3f kW/K ",sigmaprod)


