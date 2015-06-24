clc;
T=2800; // Temperature of combustion in kelvin
p=1; // Pressure of combustion in atm
// For this reverse reaction at 2800K and 1atm, from Table 15.1
K=44.168; // K=e^3.788;
K=sqrt (K); // For stoichiometric equation CO+1/2 O2 = CO2 which is halved
// From equation 15.24a and by the iteration process we get the following
a=0.198;
b=(1+a)/2;
c=1-a;
disp (c,b,a,"The balance for the actual reaction equation CO + O2 → aCO + bO2 + cCO2 is given by ");
