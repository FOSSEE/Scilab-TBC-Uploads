// Example 3_9
clc;funcprot(0);
// Given data
T=100;// °F
p=95.0;// psia

// Calculation
// From Table C.7a,C.8a of Thermodynamic Tables to accompany Modern Engineering Thermodynamics,
v_1=0.5751;// ft^3/lbm (100°F,90.0 psia)
v_2=0.5086;// ft^3/lbm (100°F,100.0 psia)
p_i1=100;// psia (Pressure used for interpolation)
p_i2=90;// psia
v=v_1+(((p-p_i2)/(p_i1-p_i2))*(v_2-v_1));// ft^3/lbm (100°F,95.0 psia)
h_1=118.39;// Btu/lbm (100°F,90 psia)
h_2=117.73;// Btu/lbm (100°F,100 psia)
h=h_1+(((p-p_i2)/(p_i1-p_i2))*(h_2-h_1));// Btu/lbm (100°F,95.0 psia)
printf("\nThe specific volume of Refrigerant-134a,v (100°F,95.0 psia)=%0.5f ft^3/lbm \nThe specific enthalpy of Refrigerant-134a,h (100°F,95.0 psia)=%3.2f Btu/lbm",v,h);

