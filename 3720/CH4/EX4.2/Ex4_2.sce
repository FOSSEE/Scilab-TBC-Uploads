//Example 4_2
clc;clear;funcprot(0);
// Given values
v=0.00187;// The volume flow rate in ft^3/s
D_inlet=0.0350;// The diameter at inlet in ft
D_outer=0.182/12;// The diameter at outlet in ft
dx=0.325;// Length of the nozzle in ft

// Calculation
A_inlet=(%pi*D_inlet^2)/4;// Area at inlet in ft^2
A_outer=(%pi*D_outer^2)/4;// Area at outer in ft^2
u_in=v/A_inlet;// ft/s
u_out=v/A_outer;;// ft/s
a_x=(u_out^2-u_in^2)/(2*dx);// Axial acceleration in ft/s^2
printf('Axial acceleration,a_x=%0.0f ft/s^2 \n',a_x);
// The answer is bit different due to round off error in book
