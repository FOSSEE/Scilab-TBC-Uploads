//Example 4.4
clear;
clc;

//Given
n=1;//moles of ice
Tm=273;//melting temperature in K
P=1;//pressure in atm;
delHf=6008;// enthalpy of fusion in J mol^-1
Tb=373;//boiling temperature in K
delHv=40850;// enthalpy of fusion in J mol^-1

//to calculate the change in entropy
delSm=delHf/Tm;//entropy change during melting in J mol^-1 K^-1
mprintf('(a) change in entropy during melting = %f J K^-1 mol^-1',delSm);
delSv=delHv/Tb;//entropy change during boiling in J mol^-1 K^-1
mprintf('\n (b) change in entropy during boiling = %f J K^-1 mol^-1',delSv);
//end