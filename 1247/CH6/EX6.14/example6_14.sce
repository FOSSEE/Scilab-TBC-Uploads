clear;
clc;

// Stoichiometry
// Chapter 6
// Stoichiometry and Unit Operations


// Example 6.14
// Page 384
printf("Example 6.14, Page 383 \n \n");

// solution

//Pa = v.p. at DP
Pw = 2.0624 //kPa
P = 100 //kPa
Hm = Pw/(P-Pw)   // kmol water vapour / kmol dry air
H = .622*Hm  // kg moisture/kg dry air
// at saturation, DB = WB = DP
Ps = 4.004 //kPa
RH = Pw*100/Ps
Hs = (Ps/(P-Ps))*.622
s = H*100/Hs
Ch = 1.006+1.84*H //kJ/kg dry air K
Vh = (.00073+.03448)*22.414*1.1062*1.0133  //m^3/kg dry air
// using fig 6.15
WB = 294.55 //K
ias = 62.3 // kJ/kg dry air
d = -.28 // kJ/kg dry air
ia = ias + d
printf("The absolute molar humidity = "+string(Hm)+" kmol water vapour/kg dry air \nAbsolute humidity = "+string(H)+" kg moisture/kg dry air \npercent RH = "+string(RH)+" \npercent saturation = "+string(s)+" \nHumid heat = "+string(Ch)+" kJ/kg dry air K\nHumid volume = "+string(Vh)+" m^3/kg dry air.")
