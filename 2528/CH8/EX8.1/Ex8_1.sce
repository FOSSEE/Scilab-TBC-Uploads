// Chapter8
// Page.No-263
// Example8_1
// Figure 8.4
// Output of Voltage and Current
// Given
clear;clc;
R1=5000;           //In Ohm
R2=20000;           //In Ohm
R3=10000;           //In Ohm
Vz=3.9;         //In V
Vl=Vz*(R2+R3)/R3;
printf("\n Output Load Voltage Vl is = %.2f V\n",Vl); // Result
Iz=(Vl-Vz)/R1;
printf("\n Output Zener Current Iz is = %.5f A \n",Iz); // Result
