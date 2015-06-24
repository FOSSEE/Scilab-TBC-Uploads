clc
clear

//Input data
Po=1.8 //Stagnation pressure in atm
To=20+273 //Stagnation temperature in K
P=1 //Surrounding pressure in atm
k=1.4 //Adiabatic constant
R=287 //Specific gas constant in J/kg-k

//Calculation
p1=0.528 //Static to Stagnation pressure ratio @Mach number=1, from gas tables
Pt=p1*Po //Critical pressure in atm, Since Pt<P the flow is not chocked 
di=(Po*10^5)/(R*To) //Density in kg/m^3 
ao=sqrt(k*R*To) //Sound velocity at Stagnation condition in m/s
Cp=(k*R)/(k-1) //Specific heat capacity at constant pressure in J/kg-K
C=sqrt(2*Cp*To*(1-(P/Po)^((k-1)/k))) //Velocity of air flow which will take place from chamber to the outside through a unit area hole in m/s
G=di*ao*sqrt(2/(k-1))*(P/Po)^(1/k)*sqrt((1-(P/Po)^((k-1)/k))) //Mass flow rate per unit area in kg/s-m^2

//Output
printf('(A)Velocity of air flow which will take place from chamber to the outside through a unit area hole is %3.3f m/s\n (B)Mass flow rate per unit area is %3.3f kg/s-m^2',C,G)
