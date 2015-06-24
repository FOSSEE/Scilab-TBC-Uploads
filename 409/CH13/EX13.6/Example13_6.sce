clear ;
clc;
// Example 13.6
printf('Example 13.6\n\n');
//Page No. 414
// Solution

F_gas =  1 ;// Flue gas [kg mol]
mf_CO2 = 14/100 ;// [mol fraction]
mf_O2 = 6/100 ;// [mol fraction]
mf_N2 = 80/100 ;// [mol fraction]
P = 765 ;//Pressure-[mm of Hg]
T =  400 ;// Temperature-[degree F]
p_CO2 = P * mf_CO2 ;// Partial pressure of CO2-[mm of Hg]
p_O2 = P * mf_O2 ;// Partial pressure of O2-[mm of Hg]
p_N2 = P * mf_N2 ;// Partial pressure of N2-[mm of Hg]

 printf(' Component            pi(Partial pressure-[mm of Hg]) \n');
 printf('  CO2                  %.1f mm of Hg\n ',p_CO2);
 printf(' O2                   %.1f mm of Hg\n ',p_O2);
 printf(' N2                   %.1f mm of Hg\n ',p_N2);