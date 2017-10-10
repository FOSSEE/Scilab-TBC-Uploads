// Example 9_11
clc;funcprot(0);
// Given data
// From example 9.9
P_1=100;// kPa
T_1=25+273;// K
r_p=5;// The pressure ratio
T_4=850+273;// The maximum temperature in K
k=1.4;// The specific heat ratio

// Calculation
n=1-((T_1/T_4)*(r_p)^((k-1)/k));// The thermal efficiency
w_r=0.420;// The back work ratio
printf("\nThe thermal efficiency,n=%0.3f or %2.1f percentage \nThe back work ratio,w_comp/w_turb=%0.3f",n,n*100,w_r);
