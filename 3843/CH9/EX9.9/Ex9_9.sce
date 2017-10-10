// Example 9_9
clc;funcprot(0);
// Given data
P_1=100;// kPa
T_1=25+273;// K
r_p=5;// The pressure ratio
T_3=850+273;// The maximum temperature in K
k=1.4;// The specific heat ratio

// Calculation
T_2=T_1*(r_p)^((k-1)/k);// K
T_4=T_3*(1/r_p)^((k-1)/k);// K
w_r=(T_2-T_1)/(T_3-T_4);// The back work ratio
n=1-(r_p)^((1-k)/k);// The thermal efficiency
printf("\nThe back work ratio,w_comp/w_turb=%0.3f or %2.0f percentage. \nThe thermal efficiency,n=%0.3f(%2.1f percentage)",w_r,w_r*100,n,n*100);
