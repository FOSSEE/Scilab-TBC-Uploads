clear;
clc;

// Stoichiometry
// Chapter 7
// Combustion


// Example 7.10
// Page 468
printf("Example 7.10, Page 468 \n \n");

// solution

// basis 100 kg of fuel oil
O2req =  9.364  // kmol
N2in = (79/21)*O2req
tN2 = N2in+.036
AIRreq = O2req*32 + tN2*28  
rAIR = AIRreq/100   // kg/kg
wp = 4.5  // kmol
Hloss = 2442.8*wp*18/100  // kJ/kg fuel
NCV = 43540-Hloss
printf("(a) \n \n NCV = "+string(NCV)+" kJ/kg. \n \n \n (b) \n \n Theoretical air required = "+string(rAIR)+" kg/kg fuel. \n \n \n (c) \n \n ")
H1 = 100*41561.33  // kJ
// from table 5.1
H71 = 1349.726*(1500-298.15)+252.924*10^-3 * ((1500^2-298.15^2)/2)+257.436*10^-6*((1500^3-298.15^3)/3)-137.532*10^-9*((1500^4-298.15^4)/4)  // upto 1500 K
H711 = H1-H71  // above 1500K
// F(T) = {1500 to T} integr[1477.301+375.2710*10^-3T-91.2760*10^-6T^2+8.146*10^-9T^3]dT-2147118     (i)
// solving it for T = 2000
AFT = 2612.71 // K
printf("When fluid is burnt with theoretical air AFT = "+string(AFT)+" K. \n \n \n (d) \n \n ")
// with 30% excess air
O2spld = 9.364*1.3
xcsO2 = O2spld-O2req
N2in1 = (79/21)*O2spld
tN21 = N2in1+.036
// now, using table 7.26, table 7.27 and eq(i)  we get
AFT1 = 2178.66  // K
// from fig 7.3
dp = 429  // K
// similarly for incomplete combustion we find
AFT2 = 2561.42 //K
printf("When 30 percent excess air is supplied AFT = "+string(AFT1)+" K. \n \n \n (d) \n \n Dew Point = "+string(dp)+" K. \n \n \n (e) \n \n For incomplete combustion AFT = "+string(AFT2)+" K.")
