clear;
clc;

// Stoichiometry
// Chapter 7
// Combustion


// Example 7.8
// Page 459
printf("Example 7.8, Page 459 \n \n");

// solution

// basis 100 kg of bagasse fired in th boiler
//(a)
O2req = 2.02 // kmol
N2in = (79/21)*O2req // kmol
AIRreq = (O2req+N2in)*29 // kg
rAIR = AIRreq/100
printf("(a) \n \n Theoretical air required = "+string(rAIR)+" kg dry air/kg fuel. \n \n \n (b) \n \n ")
// (b)
tflugas = 1.95/.1565  ///kmol
xcsO2N2 = tflugas - 1.95
x = (xcsO2N2-7.6)/4.76  // kmol
pxcsAIR = x*100/O2req
printf("Percent excess air = "+string(pxcsAIR)+". \n \n (c) \n \n ")
//(c)
pW = 100*.2677 // kPa    partial p of water vap
// from fig 6.13
dp = 339.85 //K
printf("Dew Point of flue gas = "+string(dp)+"K. \n \n \n (d) \n \n ")
// (d)
// from appendix IV
hfw = 292.97  //kJ/kg     enthalpy of feed water at 343.15 K
Hss = 3180.15  // kJ/kg   enthalpy of super heated steam at 2.15 bar and 643.15K
Hgain = Hss - hfw
H6 = Hgain*2.6*100  // kJ    heat gained by water
H1 = 100*1030000  // kJ
GCV = H6*100/H1
printf("Thermal efficiency of the boiler = "+string(GCV)+".")
