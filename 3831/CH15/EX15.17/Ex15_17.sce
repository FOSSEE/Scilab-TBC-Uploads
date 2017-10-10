// Example 15_17
clc;funcprot(0);
// Given data
T=5000;// K

// Calculation
// (a)
K_e1=10^0.450;// The equilibrium constant for the reaction
K_e2=1/K_e1;// The equilibrium constant for a second reaction
printf("\n(a)The equilibrium constant for the first reaction,K_e1=%1.2f \n   The equilibrium constant for a second reaction,K_e2=%0.3f",K_e1,K_e2);
// (b)
K_e1=10^-0.298;// The equilibrium constant for the reaction
printf("\n(b)The equilibrium constant for the reaction,K_e1=%0.3f",K_e1);
// (c)
alpha=1;// Constant
beta=3.76;// Constant
K_e1=10^(1.719);// The equilibrium constant for the first reaction
K_e2=10^-0.570;// The equilibrium constant for a second reaction
K_e3=(K_e1^alpha)*(K_e2^beta);// The equilibrium constant for a third reaction
printf("\n(c)The equilibrium constant for the first reaction,K_e1=%2.1f \n   The equilibrium constant for a second reaction,K_e2=%0.3f \n   The equilibrium constant for the combined reaction,K_e3=%0.3f",K_e1,K_e2,K_e3);
