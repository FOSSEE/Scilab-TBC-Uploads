// Find current when forward biased
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-16 in page 97

clear; clc; close;

// Given data
k_T=1.38*10^-23; // Constant of calculation
T=293; // Temperature in K
I_s=1.5*10^-13; // Saturation current in A
e=1.6*10^-19; // Charge on an electron in C
V=0.55; // Forward bias voltage in V

// Calculation
printf("At T = 20 degrees:\n");
V_T=(k_T*T)/e;
I=I_s*(exp(V/0.02527)-1);
printf("V_T = %0.4f V\n",V_T);
printf("(a)I = %0.3e A\n",I);
printf("At T = 100 degrees:\n");
V_T=(k_T*373)/e;
printf("V_T = %0.4f V\n",V_T);
printf("I_s doubles 8 times ie I_s = 256.Therefore,\n");
I=1.5*256*10^-13*(exp(0.55/0.032)-1);
printf("(b)I = %0.3f A",I);

// Result
// (a) At T=20 degrees, I = 4.251*10^-4 A
// (b) At T=100 degrees, I = 0.001 A