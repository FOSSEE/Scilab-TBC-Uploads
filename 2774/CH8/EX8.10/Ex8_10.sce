clc
//solution
// initialization of variables
mdotw3=10000 // mass flow rate of water entering in cooling tower in kg/min
Tw1=40+273 // temperature of water entering cooling tower in kelvin
Ta1=20+273 // temperature of air entering cooling tower in kelvin
phi1=0.5// relative humidity of entering air
Tw2=25+273 // temperature of water leaving cooling tower in kelvin
Ta2=32+273 // temperature of air leaving cooling tower in kelvin
phi2=0.98 // relative humidity of leaving air
// from psychrometric chart
h1=37// specific enthalpy of air @ 20*C DBT and 50% humidity
w1=0.0073 // specific humidity of air @ 20*C DBT and 50% humidity
h2=110// specific enthalpy of air @ 32*C DBT and 98% humidity
w2=0.030 // specific humidity of air @ 32*C DBT and 98% humidity

h3=167.5 // specific enthalpy of water from steam table at 40 degree celsius
h4=104.9 // specific enthalpy of water from steam table at 25 degree celsius

mdota=(mdotw3*(h4-h3))/(h1-h2+(w2-w1)*h4) // by energy balance


v1=0.84 // specific volume of air entering tower from psychrometric chart

Qf=mdota*v1 // volume flow rate in m^3/min
printf("The volume flow rate of air into the cooling tower is %i m^3/min \n",Qf)

mdot4=mdotw3-(w2-w1)*mdota // by mass balance
printf("The mass flow rate of water that leaves the cooling tower is %i kg/min",mdot4) 
// The answers is slightly different in textbook due to approximations in calculations while in scilab solution is precise









