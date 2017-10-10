// Example 18_9
clc;funcprot(0);
// Given data
T=20.0+273.15;// K

// Calculation
theta_v=2740;// K
c_vbyR=(5/2)+((((theta_v/T)^2)*exp((theta_v/T)))/(exp(theta_v/T)-1)^2);
Y=8.3143;// kJ/kg.K
M_NO=30.01;// The molecular mass of nitrous oxide
R_NO=Y/M_NO;// kJ/kg.K
c_v_NO=R_NO*c_vbyR;// kJ/kg.K
printf("\nThe value of c_v/R for nitrous oxide is %1.2f.",c_vbyR);

