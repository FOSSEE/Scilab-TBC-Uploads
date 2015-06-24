clear;
clc;

// Stoichiometry
// Chapter 7
// Combustion


// Example 7.5
// Page 451
printf("Example 7.5, Page 451 \n \n");

// solution

// basis 100 kg fuel
O2req = 4.331*32  // kg
rO2req = O2req/100
N2in = (79/21)*4.331  // kmol
AIRreq = O2req+N2in*28  //kg
rAIRreq = AIRreq/100
R = AIRreq/100
AIRspld = R*2  // kg/kg coal
O2spld = 4.331*2  // kmol
N2spld = N2in*2
N2coal = 2.05/28  // kmol
tN2 = N2spld+N2coal
moist = 1.395+(7/18)  // kmol
printf("(a) \n \n Theoratical O2 requirement per unit mass of coal = "+string(rO2req)+" kg. \n \n \n(b) \n \n Theoratical dry air requirement = "+string(rAIRreq)+" kg/kg coal.")
