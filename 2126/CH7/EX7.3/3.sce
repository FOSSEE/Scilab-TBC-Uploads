clc 
clear

//input data
a=3 //exit area to throat area ratio
T0=2973 //combustion chamber temperature in K
P0=20*10^5 //combustion chamber pressure in Pa
k=1.3 //adiabatic constant
R=248 //gas constant in J/kg-K
Pamb=1*10^5 //ambient pressure in Pa
Me=2.52 //mach number for k=1.3 and a=3 using gas tables 
g=9.81 //acceleration due to gravity in m/s^2

//calculation
p=1/((1+(((k-1)/2)*Me^2))^(k/(k-1))) //ratio of pressures at exhaust and combustion chamber 
Pe=p*P0 //exhaust pressure in Pa
t=1/(1+(((k-1)/2)*Me^2)) //ratio of exhaust temperature to combustion temperature
Te=t*T0 //exhaust temperature in Kelvin
Ce=(k*R*Te)^0.5*Me //exit velocity in the exhaust in m/s
M=(Pe*Ce)/(R*Te) //propellant mass flow per unit area of exit in kg/m^2-s
Fa=((M*Ce)+(Pe-Pamb))*10^-3 //thrust per unit area of exit in N/m^2
Is=(Fa*10^3)/(M*g) //specific impulse in sec

//output
printf('(A)thrust per unit area of exit is %3.2f kN/m^2 \n (B)specific impulse is %3.2f sec',Fa,Is)
