// Example 2_15
clc;funcprot(0);
// Given data
v_A=0.3;// m/s

// Calculation
// Solution (I).
// v_A=y_A,v_B=y_B
v_B=-(2*v_A)/3;// m/s
printf("\nThe velocity of B,v_B=%0.1f m/s",v_B);
// Solution (II).
v_B=abs((2/3)*v_A);// m/s
printf("\nThe velocity of B,v_B=%0.1f m/s (upward)",v_B);
