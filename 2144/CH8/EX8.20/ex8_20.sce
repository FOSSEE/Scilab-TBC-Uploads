// Exa 8.20
clc;
clear;
close;
// Given data
CO2= 9.9;// in %
CO= 7.2;// in %
H2= 3.3;// in %
CH4= 0.3;// in %
N2= 79.3;// in %
O2= N2*21/79;// in %
disp("Method 1 : By Carbon balance : ")
Z= (CO2+CO+CH4)/8;
x= 8*Z;
measured_air_fuel_ratio= 11.3;
mm1= 29;// molecular mass of air
mm2= 12*8+17;// molecular mass of C8H17
massOf_air= (O2+N2)*mm1;
massOf_fuel= Z*mm2;
air_fuel_ratio= massOf_air/massOf_fuel;
disp(air_fuel_ratio,"The air fuel ratio by mass is : ")
Per_error= (air_fuel_ratio - measured_air_fuel_ratio)/measured_air_fuel_ratio*100;
disp(Per_error,"Percentage error is : ")
disp("Method 2 : By Hydrogen balance : ")
X= (O2-CO2-CO/2)*2;
Z= (4*CH4+2*H2+X*2)/17;
massOf_air= (O2+N2)*mm1;
massOf_fuel= Z*mm2;
air_fuel_ratio= massOf_air/massOf_fuel;
disp(air_fuel_ratio,"The air fuel ratio by mass is : ")
Per_error= (air_fuel_ratio - measured_air_fuel_ratio)/measured_air_fuel_ratio*100;
disp(Per_error,"Percentage error is : ")
disp("Method 3 : By Carbon-Hydrogen balance : ")
y= (4*CH4+2*H2+X*2);
massOf_air= (O2+N2)*mm1;
massOf_fuel= x*12+y;
air_fuel_ratio= massOf_air/massOf_fuel;
disp(air_fuel_ratio,"The air fuel ratio by mass is : ")
Per_error= (air_fuel_ratio - measured_air_fuel_ratio)/measured_air_fuel_ratio*100;
disp(Per_error,"Percentage error is : ")





