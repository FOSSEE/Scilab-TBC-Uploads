// Chapter6
// Page.No-209, Figure.No-6.12
// Example_6_7
// Output voltage
// Given
clear;clc;
R1=1*10^3;Rf=4.7*10^3;Ra=100*10^3;Rb=100*10^3;Rc=100*10^3;
Vdc=5;
Rt=100*10^3; // Resistance of a thermistor
temp_coeff=1*10^3;

// Output voltage at 0 degree
delta_R=-temp_coeff*(0-25); // Change in resistance
R=Ra; // Ra=Rb=Rc=R
Vo=((Rf*delta_R)/(R1*4*R))*Vdc;
printf("\n Output voltage at 0 degree is = %.2f V \n",Vo)

// Output voltage at 100 degree
delta_R=-temp_coeff*(100-25); // Change in resistance
Vo=((Rf*delta_R)/(R1*4*R))*Vdc;
printf("\n Output voltage at 100 degree is = %.2f V \n",Vo)