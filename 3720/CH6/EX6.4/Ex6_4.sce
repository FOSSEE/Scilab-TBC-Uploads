//Example 6_4
clc;clear;
// Given values
b=1;// The momentum-flux correction factor
m=10;//Mass flow rate at kg/s
V_1=20;// m/s

// Calculation
F_r=b*m*V_1;
printf("The force needed to prevent the plate from moving horizontally due to the water stream=%0.0f N\n",F_r);
