// Example 3_5
clc;funcprot(0);
// Given data
V=0.500;// ft^3
p_c=3203.8;// psia
T_c=1165.1;// R
v_c=0.05053;// ft^3/lbm
p_1=14.696;// psia
T_1=212;// °F
v_f1=0.01672;// ft^3/lbm
v_g1=26.8;// ft^3/lbm

// Solution
m=V/v_c;// lbm
x_1=((v_c-v_f1)/(v_g1-v_f1))*100;// % percentage
printf('\nThe initial quality in the vessel,x_1=%0.3f percentage vapor',x_1);
