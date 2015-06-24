clc
clear
//Input data
d=0.8*10^-3;//The diameter of an orifice in m
A=1.65*10^-6;//The cross sectional area in m^2
Cd=0.9;//The discharge coefficient of the orifice 
Cp=0.85;//The coefficient of the passage
p1=170;//The injection pressure in bar
p2=25;//The compression pressure of the discharge in bar
df=850;//The density of the fuel in kg/m^3

//Calculations
Q=[(145/(22.931*10^9))^(1/2)]*10^6;//Adding two equations and solving then the discharge in cm^3/s
p=170-(2.161*10^9*(Q/10^6)^2);//Pressure immediately formed before the orifice in bar
Cf=Cd*((2*(p-p2)*10^5)/df)^(1/2);//The velocity of fuel flow through the orifice in m/s

//Output
printf('The discharge of fuel through the injector = %3.1f cm^2/s \n The jet velocity through the orifice = %3.1f m/s ',Q,Cf)
