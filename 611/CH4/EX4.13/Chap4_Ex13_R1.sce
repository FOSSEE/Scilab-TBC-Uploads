// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-4,Example 13,Page 112
//Title:Final temperature and amount of gas entering the tank
//================================================================================================================
clear 
clc

//INPUT
V=1;//volume of tank in m^3
T0=300;//initial temperature of ideal gas in K
P0=0.1;//initial pressure of ideal gas in MPa
T=500;//temperature of ideal gas in the pipeline in K
P=3;//pressure of ideal gas in the pipeline in MPa
R=8.314;//universal gas constant in J/molK
gaamma=1.4;//ratio of the molar heat capacities at constant pressure and constant volume for ideal gas (no unit)

//CALCULATION
Pf=3;//final pressure reached in the tank in MPa
//calculation of final temperature of the gas in the tank in K using Eq.(4.44) (and applying u=Cv*T, h=Cp*T and N=P*V/R*T as the gas is taken to be ideal)
Tf=(Pf*10^6)/((((Pf*10^6)-(P0*10^6))/(gaamma*T))+((P0*10^6)/T0));
//calculation of the moles of ideal gas entering into the tank using Eq.(4.44) (and applying u=Cv*T, h=Cp*T and N=P*V/R*T as the gas is taken to be ideal)
N=(V/R)*(((Pf*10^6)/Tf)-((P0*10^6)/T0));

//OUTPUT
mprintf('\n The final temperature= %0.1f K\n',Tf);
mprintf('\n The amount of gas that has entered the tank= %0.2f mol\n',N);

//===============================================END OF PROGRAM===================================================



