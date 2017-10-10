// Example 6_9
clc;funcprot(0);
// Given data
// From  Example 6_8
T_initial=137+273.15;// K
k=1.4;// The specific heat ratio

// Calculation
T_finalemptying=T_initial*((2/k)-1);// K
T_finalemptying=T_finalemptying-273.15;// °C
printf("\nThe final temperature inside the tank immediately after the tank is empty,T_final emptying=%2.1f°C.",T_finalemptying);
