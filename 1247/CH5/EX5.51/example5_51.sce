clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.51
// Page 304
printf("Example 5.51, Page 304 \n \n");

// solution
// basis 100 kg of 93% acid and 25.8 kg of 15% acid
Hfp = -814
Hf1 = -830
HE1 = Hf1-Hfp
Hf2 = -886.2
HE2 = Hf2-Hfp
Hf3 = -851
HE3 = Hf3-Hfp
Hsol = .9876*1000*(-37)-[.9482*1000*(-16)+.0394*1000*(-72.2)]
Hev = 100*(30-25)*1.6
Hcon = 25.8*25*3.7
netHev = -Hsol-Hcon+Hev
T = 298.15+netHev/(125.8*2.05)
printf(" Temp of sol = "+string(T)+" K.")
