// Example 3_3
clc;funcprot(0);
// Given data
P_1=200;// The initial pressure in kPa
V_1=2;// The initial volume in m^3
P_2=100;// The final pressure in kPa

// Calculation
C=P_1*V_1;// The constant
V_2=(P_1*V_1)/P_2;// The final volume in m^3
W_12=integrate("C/V",'V',V_1,V_2);// kJ
printf("\nThe work done by the gas,W_12=%3.0f kJ",W_12);
