// Example 12_11
clc;funcprot(0);
// Given data
T_DB1=35.0;// °C
phi_1=80/100;// The relative humidity
T_DB3=20.0;// °C
phi_2=40.0/100;// The relative humidity

// Calculation
h_1=110;// kJ/kg dry air
h_3=35;// kJ/kg dry air
Qbym_a=h_3-h_1;// kJ/kg dry air
printf("\n The heat transfer rate per unit mass flow rate of dry air required to carry out this process,Q/m_a=%2.0f kJ/kg dry air",Qbym_a);
