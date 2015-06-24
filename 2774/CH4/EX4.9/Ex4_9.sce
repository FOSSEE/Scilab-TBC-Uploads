clc
// initialization of variables
V1=2 // initial volume in m^3
V2=0.2 // final volume in m^3
T1=20+273// temperature in kelvin
P=200 // pressure in kPa
R=0.287 // constant for air
gama=1.4 // polytropic index for air
Cv=0.717// specific heat at constant volume for air
//solution

//using the ideal gas equation
m=(P*V1)/(R*T1) // mass in kg
// process is adiabatic thus
T2=T1*((V1/V2)**(gama-1))// final temperature

W=-m*Cv*(T2-T1)// work from first law
printf("The Work is "+string(W)+" kJ")
// solution is approximated in textbook
