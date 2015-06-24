clear;
clc;

// Stoichiometry
// Chapter 6
// Stoichiometry and Unit Operations


// Example 6.20
// Page 393
printf("Example 6.20, Page 393 \n \n");

// solution

// basis 100 kmol of feed gas
// using table 5.1
Sniai = 20.6*29.5909+62*28.6105+4.1*20.7723+11.1*19.2494+2.2*25.6503
Snibi = [20.6*(-5.141)+62*1.0194+11.1*52.1135+2.2*33.4806]/1000
Snici = [20.6*13.1829+62*(-.1476)+11.1*11.973+2.2*.3518]/10^6
Snidi = [20.6*(-4.968)+62*.769+11.1*(-11.3173)+2.2*(-3.0832)]/10^9
Hgas = Sniai*(283-263) + Snibi*(283^2-263^2)/2 + Snici*(283^3-263^3)/3 + Snidi*(283^4-263^4)/4  //kJ
Hnh3 = 1533.8  //kJ 
SniCmpi = (Hgas-Hnh3)/20 // kJ/(K 97.8 kmol gas)  NH3 free gas
Go = 97.8/.99995  //kmol
NH3a = (2.2-.005)*17  // kg
F1 = NH3a/.04 // flowrate of 4% NH3 solution
Water = F1-NH3a //kg
dT1 = Hgas/(Water*4.1868)  // K
Twater = 307-dT1  //K
Wvp = 2.116  //kPa
P = 5101.325  //kPa
moist = Go*Wvp/(P-Wvp) // kg
W = Water + moist // total demineralised water
dTactual = Hgas/(W*4.1868) //K
// from table 5.59
dHf1 = -80.093  //kJmol NH3  of 4% NH3 sol
dHf2 = -46.11  //kJ/molNH3
H = dHf1-dHf2  // heat of 4% NH3 sol
Hevl = -(H*NH3a*1000)/17  // total heat evolved
// in absorber gas is further heated from 283K to 291.4K
Hsol = Hevl-(2854.1*(291.4-283.15)) // kJ
// c 0f 4% NH3 sol = c of water = 4.1868 kJ/kg K
dT2 = Hsol/(F1*4.1868) 
To = 291.4+dT2
printf("(a) \n \n Temp of feed water to absorber = "+string(Twater)+"K. \n \n \n(b) \n \n Temp of aq NH3 sol leaving the absorber = "+string(To)+"K.")
