clc
clear

//Input data
M=2 //Mach number
h=20 //Altitude in km
Tc=-56 //Ambient temperature in degree Centigrade
Ta=-56+273 //Ambient temperature in K
k=1.4 //Adiabatic constant
R=287 //Specific gas constant in J/kg-k
Cp=1005 //Specific heat capacity at constant pressure in J/kg-K

//Calculation
a=sqrt(k*R*Ta) //Sound velocity in m/s
C=M*a //Velocity of flight in m/s
To=Tc+(C^2/(2*Cp)) //The maximum temperature encountered is %3.1f degree Centigrade

//Output
printf('The maximum temperature encountered is %3.1f degree Centigrade',To)
