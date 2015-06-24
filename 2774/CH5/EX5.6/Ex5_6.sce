clc
// initialization of variables
T1=20+273 // initial temperature in kelvin
P=200 // pressure in kPa
V=2 //volume in m^3
R=0.287 // gas constant for air
W=720 // work done on air in kJ
Cv=0.717 // specific heat at constant volume for air

//solution
m=(P*V)/(R*T1)// mass of air

T2=T1+(W/(m*Cv))// final temperature in kelvin

delS=m*Cv*log(T2/T1) // ENROPY CHANGE FOR CONSTANT VOLUME PROCESS
printf(" The Entropy increase is %.3f kJ/K ",delS)
