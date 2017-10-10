// Example 6_8
clc;funcprot(0);
// Given data
T_in=20.0;// °C
p_in=1.40;// MPa
k=1.40;// The specific heat ratio

// Calculation
T_finalfilling=k*(T_in+273.15);// K
T_finalfilling=T_finalfilling-273.15;// °C
printf("\nThe final temperature of the air in the tank,T_final filling=%3.0f°C",T_finalfilling);
