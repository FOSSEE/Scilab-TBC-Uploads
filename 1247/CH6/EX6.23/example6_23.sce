clear;
clc;

// Stoichiometry
// Chapter 6
// Stoichiometry and Unit Operations


// Example 6.23
// Page 401
printf("Example 6.23, Page 401 \n \n");

// solution

// basis : weak liquor flowrate = 1060 kg/h
s1 = 1060*.04 //kg/h   solids in weak liquor
liqr = s1/.25 // kg/h  conc liquor leaving 4th effect
evp = 1060-liqr // kg/h
lambdas = 2046.3  // kJ/kg
Wf = 1060 // kg/h
C1f = 4.04
T1 = 422.6
Tf = 303
lambdav1 = 2114.4
// enthalpy balance of 1st effect
// Ws*lambdas = Wf*C1f*(T1-Tf) + (Wf-W1)*2114.4
//putting values we get
// Ws = 1345.57 - 1.033*W1
// 2nd effect
// W1 = 531.38+.510*W2
// 3rd effect
// W1 - 1.990*W2 = -1.027*W3
// 4th effect
// W2 - 1.983*W3 = -176.84
//solving above eqs
W1 = 862 // kg/h
W2 = 648.2 // kg/h
W3 = 416.7 // kg/h
Ws = 455.2 // kg/h
eco = evp/Ws  // kg evaporation/kg steam
spcon = 1/eco // kg steam/kg evaporation
printf("Specific heat consumption of the system is "+string(spcon)+" kg steam/kg evaporation.")
