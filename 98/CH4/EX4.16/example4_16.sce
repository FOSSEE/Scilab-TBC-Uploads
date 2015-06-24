//Chapter 4
//Example 4_16
//Page 83

clear;clc;

cap_b=17241;
cap_a=50000-cap_b;
y=8760*cap_b/50000;

printf("Capacity of station B = %d kW \n", cap_b);
printf("Capacity of station A = %d kW \n", cap_a);
printf("Number of hours if station B operation = %d hours \n\n", y);

