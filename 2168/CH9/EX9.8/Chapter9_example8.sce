clc
clear
//Input data
td=7.5//Throat diameter in cm
Ca=0.85//Coefficient of air flow
fd=0.5//Diameter of fuel orifice in cm
Cd=0.7//Coefficient of discharge
l=5//Nozzle lip in mm
x=1//Approach factor
dpa=0.15//Pressure drop in kg/cm^2
da=1.29//Density of air in kg/m^3
dp=720//Density of fuel in kg/m^3

//Calculations
afr1=(((3.14*td^2)/(3.14*fd^2))*(Ca/Cd)*sqrt(da/dp))//Air fuel ratio
afr2=((3.14*td^2)/(3.14*fd^2))*(Ca/Cd)*sqrt((da*dpa)/(dp*(dpa-((l/100)*(dp/10^6)))))//Air fuel ratio

//Output
printf('The air fuel ratio \n (a) neglecting nozzle lip is %3.2f \n (b) nozzle lip is taken into account is %3.2f',afr1,afr2)
