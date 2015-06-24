clc
clear
//Input data
d2=22;//The venturi throat diameter of a simple carburettor in mm
Cda=0.82;//The coefficient of air flow 
dj=1.2;//The fuel orifice diameter in mm
Cdf=0.7;//The coefficient of fuel flow
Z=0.004;//The petrol surface below the throat in m
g=9.81;//The gravitational constant in m/s^2
da=1.2;//The density of air in kg/m^3
df=750;//The density of fuel in kg/m^3
P=0.075;//The pressure drop in bar

//Calculations
A=(Cda/Cdf)*(d2^2/dj^2)*(da/df)^(1/2);//The air fuel ratio 
A1=(Cda/Cdf)*(d2^2/dj^2)*((da*P)/(df*(P-(g*Z*df)/10^5)))^(1/2);//Air fuel ratio when the nozzle lip Z is considered 
Ca2=(2*g*Z*df/da)^(1/2);//Critical velocity at the throat in m/s

//Output
printf(' (a) The air fuel ratio when the nozzle lip is neglected = %3.2f \n (b)The air fuel ratio when the nozzle lip is considered = %3.2f \n (c) The critical air velocity or minimum velocity required to start the fuel flow = %3.0f m/s ',A,A1,Ca2)

