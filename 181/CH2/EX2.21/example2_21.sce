// Maximum reverse-bias voltage to be maintained
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-21 in page 99

clear; clc; close;

// Given data
Rt=0.15*10^-3; // Thermal resistance of mechanical contact between diode and surroundings in mW/degree celcius
T1=25; // Ambient temperature in degree celcius
T2=35; // Rise in ambient temperature in degree celcius
I_25=5*10^-6; // Reverse saturation current at 25 degrees in mu-A

// Calculation
Po=Rt*(T2-T1);
printf("P_out = %0.2e mW\n",Po);
printf("We know that reverse saturation current doubles for every 10 degree rise in temperature\n");
I_35=2*I_25;
V=Po/I_35;
printf("Thus the maximum reverse bias voltage to be maintained is %0.0f V",V);

// Result
// Maximum reverse bias voltage that can be maintained across diode is 150V