// Exa 8.13
clc;
clear;
close;
// Given data
N = 83;//compositon of nitrogen in %
C = 81;//carbon mass in the fuel in %
C1 = 11;//compositon of CO2 in %
C2 = 2;// compositon of CO in %
O = 4;// composition of O2 in %
AirSupplied =N*C/(33*(C1+C2));// in kg/kg
disp(AirSupplied,"The amount of air supplied in kg per kg of fuel is : ")
ExcessAir =79*O*C/(21*33*(C1+C2));// in kg/kg
disp(ExcessAir,"Weight of excess air in kg per kg of fuel is : ")
