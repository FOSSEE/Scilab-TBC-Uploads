// Chapter4
// Page.No-127, Figure.No-4.19
// Example_4_4_a
// Max Output offset voltage
// Given
clear;clc;
R1=470;Rf=47*10^3;
Vio=6*10^-3;
Ib=500*10^-9;
Vs=15;
// Max output offset voltage due to input offset voltage,Vio is :
Voo=(1+Rf/R1)*Vio; // Max output offset voltage
printf("\n Max output offset voltage is = %.3f V dc \n",Voo) // Result
// Max output offset voltage due to input offset voltage,Ib is :
VoIb=Rf*Ib; // Max output offset voltage
printf("\n Max output offset voltage due to input offset current,Ib is = %.6f V dc \n",VoIb) // Result