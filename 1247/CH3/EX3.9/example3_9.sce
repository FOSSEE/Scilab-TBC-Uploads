clear;
clc;

// Stoichiometry
// Chapter 3
// Material Balances Without Chemical Reaction


// Example 3.9
// Page 65
printf("Example 3.9, Page 65 \n \n");

// solution

l = 1 //[litre] water (basis)
Cl = 475.6 //[mg]
m1 = (58.5/35.5)*Cl //[mg] NaCl present in water
SO4 = 102.9 //[mg] // SO4
m3 = (142/96)*SO4 //[mg] Na2SO4 present in water
// carbonates are present due to Na2CO3
// eq mass of CaCO3 = 50
// eq mass of Na2CO3 = 53
m4 = (53/50)*65.9 // [mg] Na2CO3 present in water
// NaHCO3 in water = bicarbonates - temporary hardness
m5 = 390.6-384 // [mg] NaHCO3 present as CaCO3
m6 = (84/50)*m5 // [mg] NaHCO3 present in water
// equivalent mass of Mg(HCO3)2 = 73.15
m7 = (m6/50)*225
m8  = 384-225 //[mg] CaCO3 from Ca(HCO3)2
// equivalent mass of Ca(HCO3)2 is 81
m9 = (m8/50)*159 //[mg] Ca(HCO3)2 present in water
printf("Component analysis of raw water: \n \n \nCompound          mg/l \n \nCa(HCO3)2         "+string(m9)+" \nMg(HCO3)2         "+string(m7)+" \nNaHCO3            "+string(m6)+" \nNa2CO3            "+string(m4)+" \nNaCl              "+string(m1)+" \nNa2SO4            "+string(m3)+"")
