clear;
clc;

// Stoichiometry
// Chapter 4
// Material Balances involving Chemical Reaction


// Example 4.8
// Page 124
printf("Example 4.8, Page 124 \n \n");

// solution

n = 100//[kmol] SO3 free gas basis
n1 = 16.5 //[kmol] SO2
n2 = 3 //[kmol] O2
n3 = 80.5 //[kmol] N2
// S + O2 = SO2
// S + 3/2 O2 = SO3
n4 = (21/79)*80.5 //[kmol] O2 supplied
n5 = n4-n1-n2 // [kmol] Unaccounted O2
// O2 used in 2nd eq is m5
n6 = (2/3)*n5 //[kmol] SO3 produced
n7 = n1+n6 // sulphur burnt
m7 = n7*32 //[kg]
f1 = n6/n7 // fraction of SO3 burnt
// O2 req. for complete combustion of S = n7
n8 = n4-n7 //[kmol] excess O2
p1 = n8*100/n7 // %age of excess air
n9 = n4+n3 //[kmol/s] air supplied
F1 = n9*.3/n7 // air supply rate
v = 22.414*(303.15/273.15)*(101.325/100) //[m^3/kmol] sp. vol of air
V1 = F1*v //[m^3/s] flow rate of fresh air
n10 = n+n7 //[kmol] total gas from burner
n11 = n10*.3/m7 // [kmol/s] gas req. for .3 kg/s S
V2 = 220414*1073.15*n11/273.15 // flowrate of burner gases
printf("(a) \n \n The fraction of S burnt = "+string(f1)+" \n \n \n(b) \n \n percentage of excess air over the amount req. for S oxidising to SO2 = "+string(p1)+" \n \n \n(c) \n \n volume of dry air = "+string(V1)+" m^3/s \n \n \n(d) \n \n volume of burner gases = "+string(V2)+" m^3/s.")

