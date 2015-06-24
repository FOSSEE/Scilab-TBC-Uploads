// Chapter4
// Page.No-130, Figure.No-4.21
// Example_4_6
// Max Output offset voltage
// Given
clear;clc;
Iio=200*10^-9; // Input offset current
Rf=100*10^3;
VoIio=Rf*Iio; // Max output offset voltage
printf("\n Max output offset voltage due to input offset current,Ib is = %.4f V dc \n",VoIio) // Result