// Example 4_4
clc;funcprot(0);
// Given data
p=20.0;// Pressure in psia
D_1=1.00;// Initial diameter in ft
D_2=10.0;// Final diameter in ft

// Solution
W_12=p*144*(%pi/6)*(D_2^3-D_1^3);// ft.lbf
printf('\nThe moving system boundary work,W_12=%1.2e ft.lbf',W_12);
