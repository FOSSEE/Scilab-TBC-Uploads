clear;
clc;

// Stoichiometry
// Chapter 7
// Combustion


// Example 7.6
// Page 452
printf("Example 7.6, Page 452 \n \n");

// solution

// basis 100 kg of RFO
O2req = 9.786 //kmol
N2req = (79/21)*O2req  //kmol
AIRreq = O2req+N2req //kmol
rAIRreq = AIRreq*29/100
AIRspld = AIRreq*1.25
rAIRspld = AIRspld/100
// using table 7.11 and 7.12
xSO2 = .07/(55.925+5.695)  // kmol SO2/kmol wet gas
vSO2 = xSO2*10^6  // ppm
mSO2 = 4.48*10^6/(1696.14+102.51)
// at 523.15 K and 100.7 kPa
V = [(55.925+5.695)*8.314*523.15]/100.7  // m^3
cSO2 = (4.48*10^6)/V  // mg/m^3
//from fig 7.3
dp = 424.4 //K
printf("(a) \n \n Theoretical air required = "+string(rAIRreq)+" kg/kg fuel. \n \n \n(b) \n \n Actual dry air supplied = "+string(rAIRspld)+" kg/kg fuel. \n \n \n(c) \n \n Concentration of SO2 = "+string(mSO2)+" mg/kg. \n \n \n(d) \n \n Concentration of SO2 = "+string(vSO2)+" ppm vol/vol. \n \n \n(e) \n \n Concentration of SO2 if gases are discharged at 523.15K and100.7kPa = "+string(cSO2)+" mg/m^3. \n \n \n(f) \n \n Dew Point of flue gas = "+string(dp)+" K.")
