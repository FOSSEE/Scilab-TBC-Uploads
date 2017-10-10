// Example 10_2
clc;funcprot(0);
// Given data
T=400;// °C
P=4;// MPa

// Calculation
// From steam tables
dh=3330-3092;// kJ/kg
ds=6.937-6.583;// kJ/kg.K
dhbyds=dh/ds;// K
printf("\n(dh/ds)_P=%3.0f K or %3.0f°C",dhbyds,dhbyds-273);
