//Example 6.6
clear;
clc;

//Given
delHfus=6.0;//heatoffusion of water in kJ mol^-1
T=298;//temperature in K
k=1.38*(10^(-23));//in J K^-1
N=10;//number of molecules

//To calculate the probabilty that 10 molecules will be found in half of the container
delS=N*k*log(0.5);//entropy change in J mol^-1 K^-1
w=delS/(2.303*k);//w=log10(W)
W=10^(w);//probabilty that 10 molecules will be found in half of the container
mprintf('probabilty that 10 molecules will be found in half of the container = %f',W);
//end