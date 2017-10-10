// Example 1_7
clc;funcprot(0);
// Given data
h=0.6;// The manometer reading in m
r=9810;// The weight density in N/m^3
S_gm=13.6;// The specific gravity of mercury

// Calculation
P=(h*S_gm*r)-(h*r);// Pa
printf("\nThe water pressure,P=%5.0f Pa or %2.1f kPa",P,P/10^3);
// The answer vary due to round off error
