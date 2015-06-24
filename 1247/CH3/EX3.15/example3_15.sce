clear;
clc;

// Stoichiometry
// Chapter 3
// Material Balances Without Chemical Reaction


// Example 3.15
// Page 76
printf("Example 3.15, Page 76 \n \n");

// solution

f1 = 1.25 //[m^3/s] fresh ambient air as feed (basis)
f2 = 5.806 //[m^/s] air entering auditorium
v1 = 8.314*290/101.3 //[m^3/kmol] sp. vol. of moist air at 101.3 kPa and 290 K
na1 = f2*1000/v1 // [mol/s] molar flow rate of air entering auditorium
nw1 = 243.95*.0163/1.0163 // [mol/s]
na2 = 243.95 - nw1 //[mol/s] dry air flow
nw2 = 240.04*.0225 //[mol/s] moisture enterin air conditioning plant
// using table 3.8
m1 = (nw2-nw1) //[kg/h] moisture removed in a c plant
m2 = na2-.0181 //[mol/s] moisture in air leaving auditorium
m3 = (m2-nw1)*18 // [kg/h] moisture added in auditorium
Vm2 = 8.314*308/101.3 // [m^3/kmol]
na3 = (f1/25.28)*1000 //[mol/s] 
n4 = 5.40-1.925 //[mol/s] moisture in recycle stream
mr = 240.04-47.525 //[mol/s] molar flow rate of wet recycle stream
R = mr/na3
printf("(a) \n \nmoisture removed in AC plant = "+string(m1)+"\n \n \n(b) \n \nmoisture added in auditorium = "+string(m3)+" \n \n \n(c) \n \nrecycle ratio of moles of air recycled per mole mole of fresh ambient air input = "+string(R)+".")
