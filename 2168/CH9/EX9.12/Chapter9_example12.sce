clc
clear
//Input data
af=0.066//Air fuel ratio
p=0.83//Pressure at the venturi throat in kg/cm^2
pd=0.04//Pressure drop in kg/cm^2
va=245//Air flow at sea level in kg per hour

//Calculations
dpa=1.03-p//Pressure at air cleaner in kg/cm^2
d=(1.03-pd-dpa)//Throat pressure when the air cleaner is fitted in kg/cm^2
naf=(af*sqrt((1.03-d)/dpa))//New air fuel ratio

//Output
printf('(a) Throat pressure when the air cleaner is fitted is %3.2f kg/cm^2 \n (b) New air fuel ratio is %3.4f',d,naf)
