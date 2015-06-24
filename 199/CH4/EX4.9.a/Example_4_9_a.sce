// Chapter4
// Page.No-136, Figure.No-4.24
// Example_4_9_a
// Error voltage and output voltage
// Given
clear;clc;
delta_Vio=(30*10^-6); // Change in input offset voltage
delta_T=1; // Unit change in temperature
delta_Iio=(300*10^-12); // Change in input offset current
Vs=15;
R1=1*10^3;Rf=100*10^3;Rl=10*10^3;
Vin=10*10^-3; // Input voltage
k=25; // Amplifier is nulled at 25 deg
T=55-k; // Change in temperature
Ev=(1+Rf/R1)*(delta_Vio/delta_T)*T + Rf*(delta_Iio/delta_T)*T; // Error voltage
printf("\n Error voltage is = %.4f V dc \n",Ev) // Result
Vo=-(Rf/R1)*Vin+Ev; // Output voltage
printf("\n Output voltage is = %.4f V \n",Vo) // Result 
// (OR) 
Vo=-(Rf/R1)*Vin-Ev; // Output voltage
printf("\n Output voltage is = %.4f V \n",Vo) // Result