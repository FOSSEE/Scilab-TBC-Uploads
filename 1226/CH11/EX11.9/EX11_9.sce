clc;funcprot(0);//EXAMPLE 11.9
// Initialisation of Variables
da=0.018;..........................//Throat Diameter in m
df=0.0012;......................//Diameter of fuel orifice in m
Cda=0.82;.................//Coefficient of air flow
Cdf=0.65;......................//Coefficient of fuel flow
z=0.006;........................//Level of petrol surface below the throat
rhoa=1.2;.......................//density of air in kg/m^3
rhof=750;.........................//density of fuel in kg/m^3
g=9.81;........................//Acceleration due to gravity in m/s^2
delp=0.065*10^5;...................//Pressure drop in N/m^2
//Calculations
afr1=(Cda/Cdf)*((da/df)^2)*sqrt(rhoa/rhof);..................//Air fuel ratio when the nozzle lip is neglected
disp(afr1,"Air fuel ratio when the nozzle lip is neglected:")
afr2=afr1*sqrt(delp/(delp-(g*z*rhof)));.....................//Air fuel ratio when nozzle lip is taken into account
disp(afr2,"Air fuel ratio when nozzle lip is taken into account:")
C2=sqrt((2*g*z*rhof)/rhoa);.........................//Minimum velocity of air in m/s
disp(C2,"Minimum velocity of air (in m/s):")
