clc
clear
//INPUT DATA
Vs=1.5*10^-3;//capacity of cylinder in m^3
N=3000;//speed in rpm
BP=48;//break power in kW
nv=0.92;//volumetric efficiency in percentage
P=101.325;//atmospheric pressure in kPa
Ra=0.287;//gas constant
Ta=303;//atm.temperature in K
x=21;//airfuel ratio


//CALCULATIONS
Roa=(P/(Ra*Ta));//Density of air in kg/m^3
ma=(nv*Roa*Vs*N/(2*60));//mass of air in kg/s
mf=ma/x;//mass of fuel in kg/s
bsfc=mf*3600/BP;//Brake specific fuel consumption in kg/kWh
me=ma+mf;;//mass rate of exhaust flow in kg/s
bpo=(BP/Vs)/1000;//Brake output per displacement in kW/litres

//OUTPUT
printf('(i)Rate of air flowinto engine %3.5f kg/s \n (ii)Brake specific fuel consumption is %3.3f kg/kWh \n (iii)mass rate of exhaust flow is %3.5f kg/s \n (iv)Brake output per displacement is %3.i kW/litres',ma,bsfc,me,bpo)
