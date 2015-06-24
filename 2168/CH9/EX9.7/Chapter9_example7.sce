clc
clear
//Input data
mf=7.5//Consumption of petrol per hour
gf=0.75//Specific gravity of fuel
Tf=25+273//Temperature of fuel in K
af=15//Air fuel ratio
dc=22//diameter of choke tube in mm
l=4//Top of the jet is 4 mm above the petrol level in the float chamber
Ca=0.82//Coefficient of discharge for air 
Cf=0.7//Coefficient of discharge for fuel
R=29.27//Characteristic gas constant for air in kg.m/kg.K
p=1.03//Atmospheric pressure in kg/cm^2

//Calculations
da=(p*10^4)/(R*Tf)//Density of air in kg/m^3 
dp=(gf*1000)//Density of petrol in kg/cm^3
dpa=((af*mf*10^6)/(60*60*3.14*Ca*(dc/2)^2))^2/(2*9.81*da)//Change in pressure in kg/m^2
df=sqrt((mf/(60*60*Cf*sqrt(2*9.81*dp*(dpa-((l/100)*dp)))))*(4/3.14))*1000//Diameter of the fuel jet in mm

//Output
printf('Diameter of the jet of the carburettor is %3.2f mm',df) 
