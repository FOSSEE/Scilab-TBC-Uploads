clc;clear;
//Example 15.5
//round off error

//from Table A-6
HCO2=-393520;
HH2O=-285830;
HC8H18=-249950;

//calculations
// C8H18 + ath (O2 + 3.76N2) = 8CO2 + 9H2O + 3.76athN2
//N2 and O2 are stable elements, and thus their enthalpy of formation is zero
//hc = Hprod - Hreact
hc= 8*HCO2 + 9*HH2O - HC8H18;
disp(hc,'the enthalpy of combustion of liquid octane in kJ/kmol')
