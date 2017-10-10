//Example 7.4//

//The thermal expansion coefficient for AL2O3 over the range
a=8.8*10^-6//mm/(mm degree C) //Linear coefficient of Thermal expansion
//If we take room temperature as 25degree C
T=1000;//degree C //Temperature
T1=25;//degree C //Temperature
e=a*(T-T1)
mprintf("e = %e",e)
//an E for sintered Al2O3 as
E=370*10^3;//MPa // sintered Al2O3
si=E*e
mprintf("\n si = %i MPa (compressive) (Answer calculated in textbook is wrong)",si)
