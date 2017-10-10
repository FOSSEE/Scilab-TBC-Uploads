//Example 6.4
clear;
clc;

//Given
delHfus=6.0;//heatoffusion of water in kJ mol^-1
T=273;//temperature in K
k=1.38*(10^(-23));//in J K^-1
NA=6.023*(10^23);//avogadros number

//To calculate the number of distinguishable states of water at 273 K
delS=(1000*delHfus)/(NA*T);//entropy change in J mol^-1 K^-1
w=delS/(2.303*k);//w=log10(W)
W=10^(w);//number of distinguishable states
mprintf('number of distinguishable states = %i',W);
//end