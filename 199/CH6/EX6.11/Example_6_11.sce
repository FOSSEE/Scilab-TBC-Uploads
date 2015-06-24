// Chapter6
// Page.No-222, Figure.No-6.18
// Example_6_11
// Current and voltage drop
// Given
clear;clc;
Vin=0.5;Vo=1.2;
R1=100;
Io=Vin/R1; // Current through diode
printf("\n Current through diode is = %.4f A \n",Io)
Vd=Vo-Vin; // Voltage drop across diode
printf("\n Voltage drop across diode is = %.1f V \n",Vd)