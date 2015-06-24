// Chapter4
// Page.No-132, Figure.No-4.22(a)
// Example_4_7
// Total Output offset voltage
// Given
clear;clc;
R1=1*10^3;Rf=10*10^3;
Vio=7.5*10^-3; // Max input offset voltage
Iio=50*10^-9; // Max input offset current
Ib=250*10^-9; // Max input bias current
// For figure 4.22(a)
VooT=(1+Rf/R1)*Vio+(Rf*Ib); // Since the current generated output offset voltage is due to input bias current Ib
printf("\n Max total output offset voltage due to input offset current,Ib is = %.4f V  \n",VooT) // Result

// For figure 4.22(b)
VooT=(1+Rf/R1)*Vio+(Rf*Iio); // Since the current generated output offset voltage is due to input offset current Ib
printf("\n Max total output offset voltage due to input offset current,Ib is = %.4f V  \n",VooT) // Result