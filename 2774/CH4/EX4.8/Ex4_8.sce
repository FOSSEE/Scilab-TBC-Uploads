clc
// initialization of variables
V=0.02 // volume in m^3
P=400 // pressure in kPa
T1=50+273 // initial temperature in kelvin
T2=700+273 // final temperature in kelvin
Q=50 // heat added in kJ
R=287 // constant for air
Cp=1 // constant for specific heat of air

//using the ideal gas equation

m=P*1000*V/(R*T1) // mass of air in kg
W=Q-(m*Cp*(T2-T1)) // work done from first law
printf("The Paddle work is "+string(W)+" kJ")
 
