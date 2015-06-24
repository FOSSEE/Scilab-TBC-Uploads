// Chapter4
// Page.No-121, Figure.No-4.13
// Example_4_2
// Max Output offset voltage
// Given
clear;clc;
R1=1*10^3;Rf=10*10^3;
Vio=10*10^-3; // Input offset voltage
Aoo=1+Rf/R1; // To find max value of Voo,we reduce input voltage vin to zero.
Voo=Aoo*Vio; // Max output offset voltage
printf("\n Max output offset voltage is = %.3f V dc \n",Voo) // Result