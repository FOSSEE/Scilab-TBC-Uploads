clear;
clc;

// Stoichiometry
// Chapter 4
// Material Balances involving Chemical Reaction


// Example 4.11
// Page 132
printf("Example 4.11, Page 132 \n \n");

// solution

m = 100 //kg pyrites (basis)
//(a)
printf("(a) \n \n")
S1 = 42 //kg
i1 = 58 //kg  inerts
// 8 moll S = 3 mol O2 in Fe2O3
m1 = 3*32*42/8*32 //kg O2 converted to Fe2O3
m2 = i1+m1 // mass of SO3 free cinder
//2.3 kg S is in 100kg cinder
m3 = 100-(2.3*80/32)
m4 = (100/m3)*m2
m5 = m4*.023 //kg  S in cinder
p1 = 1.8*100/42
printf("percentage of cinder remained in cinder = "+string(p1)+". \n \n \n(b) \n \n")
//(b)
m6 = 100 //kmol SO3 free roaster gas (basis)
m7 = 7.12 //kmol O2 as SO2
m8 = 10.6 //O2
m9 = 100-m8-m7//N2
m10 = (21/79)*m9 // O2 entering roaster along N2
m11 = m7+m8+(3*7.12/8) // accounted O2
m12 = m10-m11 // unaccounted O2
m13 = (8/15)*m12 // SO3 formed
m14 = m13+m7 // S burnt
p2 = (m13/m14)*100
printf("percentage of S burnt to form SO3 = "+string(p2)+" \n \n \n(c) \n \n")
// (c)
// basis 100kg pyrite
m15 = 37.81/32 // SO2 formed
m16 = (m9+m10)*1.181/m7 // air supplied
// 4 kg pyrite is roasted
m17 = m16*4/100 //kmol/s  total air supplied
v1 = m17*24.957 
printf("volumetric flow rate of air = "+string(v1)+" m^3/s \n \n \n(d) \n \n")
// (d)
m18 = (100.455*m17)/(m9+m10) // roaster gases
v2 = m18*66.386
printf("volumetric flow rate of roaster gases = "+string(v2)+" m^3/s \n\n\n(f) \n\n")
//(f)
m19 = 4.838*10^-2*.98 // SO3 absorbed in absorber
// SO3 + H2O = H2SO4
m20 = (m19*98*24*3600)/(.98*1000) //[t/d]
printf("Amount of 98 percent acid strength produced = "+string(m20)+" t/d.")


