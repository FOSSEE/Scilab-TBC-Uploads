clc
clear
//Input data
d1=0.075//Throat diameter in m
Ca=0.93//Coefficient of air flow
d2=0.005//Orifice diameter in m
Cf=0.68//Coefficient of fuel discharge
ap=1//Approach factor
dp=0.15//Pressure drop in kg/cm^2
da=1.29//Density of air in kg/m^3
df=720//Density of fuel in kg/m^3

//Calcultions
w=(((3.14/4)*d1^2)/((3.14/4)*d2^2))*(Ca/Cf)*sqrt(da/df)//The air-fuel ratio neglecting the nozzle lip

//Output
printf('The air-fuel ratio neglecting the nozzle lip is %3.1f',w)
