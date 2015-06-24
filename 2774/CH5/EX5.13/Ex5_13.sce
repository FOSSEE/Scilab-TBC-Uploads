clc
// initialization of variables
T1=600+273 // initial temperature in kelvin
P1=2 // initial pressure in MPa
P2=10 // final pressure in kPa
mdot=2 // mass flow rate in kg/s

//solution
//please refer to steam table for values
h1=3690 // specific enthalpy in kJ/kg @ 2MPa and 600 degree celsius
s1=7.702 //specific entropy in kJ/kg.K @ 2MPa and 600 degree celsius
s2=s1 // Reversible adiabatic process thus entropy is constant
sf2=0.6491 //specific entropy of saturated liquid from steam table @ 10 kPa
sg2=8.151 //specific entropy of saturated vapour from steam table @ 10 kPa

x2=(s2-sf2)/(sg2-sf2) // quality of steam at turbine exit

h2f=191.8 //specific enthalpy of saturated liquid from steam table @ 10 kPa
h2g=2584.8 //specific enthalpy of saturated vapour from steam table @ 10 kPa
h2=h2f+x2*(h2g-h2f) // specific enthalpy @ quality 'x' 

WdotT=mdot*(h1-h2)// from work done in adiabatic process
printf(" The maximum power output is %.0f kJ/s",WdotT)
// the answers are approximated in textbook but here they are precise thus minute difference is there
