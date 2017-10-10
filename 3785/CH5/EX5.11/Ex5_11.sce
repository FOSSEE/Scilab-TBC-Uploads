// Example 5_11
clc;funcprot(0);
// Given data
V_s=1;// The speed of water jet in m/s
D_s=3;// The diameter of a hole in cm
D_j=10;// The jet diameter in cm
x=1;// Distance from the source in m

// Calculation
V_j=V_s*(D_s/D_j);// m/s
printf("\nThe value of the jet speed V_j at that point is %0.1f m/s.",V_j);
