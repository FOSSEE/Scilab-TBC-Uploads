// Chapter6
// Page.No-200, Figure.No-6.6
// Example_6_4
// Output voltage
// Given
clear;clc;
Va=1;Vb=2;Vc=3; // Input voltages in volts
Ra=3*10^3;Rb=3*10^3;Rc=3*10^3;Rf=1*10^3;
Vo=-((Rf/Ra)*Va+(Rf/Rb)*Vb+(Rf/Rc)*Vc); // Output voltage
printf("\n Output voltage is = %.f V \n",Vo)