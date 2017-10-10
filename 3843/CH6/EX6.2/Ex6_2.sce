// Example 6_2
clc;funcprot(0);
// Given data
P_1=1200;// kPa
P_2=140;// kPa
T_1=350+273;// K
c_v=0.717;// kJ/kg.K
k=1.4;// The specific heat ratio

// Calculation
T_2=T_1*(P_2/P_1)^((k-1)/k);// K
w=c_v*(T_1-T_2);// kJ/kg
printf("The work done by the gases,w=%3.0f kJ/kg",w);
