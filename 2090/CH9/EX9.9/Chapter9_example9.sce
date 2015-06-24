clc
clear
//Input data
bp=8;//The brake power of the petrol engine in kW
nb=30;//The brake thermal efficiency in percent
CV=44000;//The calorific value of the fuel in kJ/kg
p1=1.013;//The suction condition of engine pressure in bar
T1=300;//The temperature at suction condition in K
Aj=2.5*10^-6;//The area of jet in m^2
Z=0.008;//The nozzle lip in m
g=9.81;//The gravitational force constant in m/s^2
A=15;//The air fuel ratio
Cda=0.9;//The coefficient of air flow
Cdf=0.7;//The coefficient of fuel flow
df=750;//The density of fuel in kg/m^3
pi=3.141;//The mathematical constant of pi
va=0.8;//The specific volume of air in m^3/kg

//Calculations
va1=va*T1/273;//Specific volume of air at atmospheric pressure and 300K in m^3/kg
da=1/va;//The density of air at inlet condition in kg/m^3
mf=bp/[(nb/100)*CV];//Mass flow rate of fuel in kg/s
Cf=mf/(Cdf*df*Aj);//Velocity of fuel in m/s
P=[(Cf^2*df)/2]+(df*g*Z);//The pressure drop in N/m^2
Ca=(2*P/da)^(1/2);//Velocity of air at the throat in m/s
ma=mf*A;//The mass flow rate of air in kg/s
A2=[ma/(Cda*da*Ca)]*10^4;//The area of the venturi in cm^2
d2=(A2*4/pi)^(1/2);//The diameter of venturi in cm

//Output
printf('The venturi throat diameter of the carburator = %3.2f cm ',d2)
