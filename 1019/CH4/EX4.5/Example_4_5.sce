//Example 4.5
clear;
clc;

//Given
n=1;//moles of ice
Ttrans=286;//melting temperature in K
P=1;//pressure in atm;
delHtrans=2090;// enthalpy of transformation in J mol^-1
Tb=373;//boiling temperature in K
delHv=40850;// enthalpy of fusion in J mol^-1

//to calculate the change in entropy
delSv=delHv/Tb;//entropy change during boiling in J mol^-1 K^-1
mprintf('(a) change in entropy during boiling of water = %f J K^-1 mol^-1',delSv);
delStrans=delHtrans/Ttrans;//entropy change during transition in J mol^-1 K^-1
mprintf('\n (b) change in entropy during phase transformation of Sn = %f J K^-1 mol^-1',delStrans);
//end