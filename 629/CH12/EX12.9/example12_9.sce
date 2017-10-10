clear
clc
//Example 12.9 MASS FLOW RATE IN SUPERSONIC WIND TUNNEL
k=1.4;
R=287; //[J/kg.K]
M=3; //Mach number
A=225*10^-4; //[m^2]
//Throat area
Ao=A/((1/M)*{(1+[(k-1)/2]*M^2)/((k+1)/2)}^((k+1)/(2*(k-1)))) //[m^2]
//Static T,p 
T=273+(-20) //[K]
p=50; //[kPa]
//Total temperature
Tt=T*(1+(k-1)*M^2/2) //[K]
//Total pressure
pt=p*(1+(k-1)*M^2/2)^(k/(k-1)) //[kPa]
//Mass flow rate
m=k^(1/2)*[(2/(k+1))^((k+1)/(2*(k-1)))]*pt*10^3*Ao/((R*Tt)^(1/2)) //[kg]
printf("\n The mass flow rate = %.1f kg/s.\n",m)