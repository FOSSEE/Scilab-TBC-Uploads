//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-16, Example 1, Page 404
//Title: Single-Stage Limestone Calciner
//==========================================================================================================

clear
clc

//INPUT
T=1000;//Operating temperature of calciner in degree celcius
deltaHr=1795;//Heat of reaction in kJ/kg
M1=0.1;//Molecular weight of Calcium carbonate in kg/mol
M2=0.056;//Molecular weight of CaO in kg/mol
M3=0.044;//Molecular weight of Carbon dioxide  in kg/mol
M4=0.029;//Molecular weight of Air in kg/mol
M5=0.029;//Molecular weight of Combustion gas in kg/mol
Cp1=1.13;//Specific heat of Calcium carbonate in kJ/kg K
Cp2=0.88;//Specific heat of CaO in kJ/kg K
Cp3=1.13;//Specific heat of Carbon dioxide in kJ/kg K
Cp4=1.00;//Specific heat of Air in kJ/kg K
Cp5=1.13;//Specific heat of Calcium carbonate in kJ/kg K
Tf=20;//Temperature of feed in degree celcius
ma=15;//Air required per kg of fuel in kg
Hc=41800;//Net combustion heat of fuel in kJ/kg
Tpi=20;//Initial temperature of solids in degree C
Tgi=1000;//Initial temperature of gas in degree C

//CALCULATION
mc=1;//Based on 1 kg of Calcium carbonate
B=(1/(Hc-(ma+mc)*Cp5*(T-Tpi)))*[M3*Cp3*(T-Tf)+M2*Cp2*(T-Tf)+deltaHr]//Fuel consumption(kg fuel/kg calcium carbonate)
B1=B*M3/M2;//Fuel consumption(kg fuel/kg Cao)
H=Hc*B1;//Heat required for calcination
eta=deltaHr/(B*Hc);//Thermal efficiency

//OUTPUT
mprintf('\nFuel consumption:%f kg fuel/kg Cao',B1);
mprintf('\nHeat requirement for calcination:%f kJ/kg Cao',H);
mprintf('\nThermal efficiency:%f percentage',eta*100);

//====================================END OF PROGRAM ======================================================