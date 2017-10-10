//Example 10_8
clc;clear;funcprot(0)
// Given values
w=2.0;// Width in mm
L=35.0;// Length in cm
b=2.0;// Distance in cm
v_dot=0.110;// The total volume flow rate in m^3/s
u_starmax=0.159;// m/s
// Calculation
v_dotbyL=-(v_dot/(L/100));// Strength of line source in m^2/s
u_max=-(u_starmax*(v_dotbyL/(b/100)));// Maximum speed along the floor
printf('\nStrength of line source=%0.3f m^2/s \nMaximum speed along the floor,u_max=%0.2f m/s',v_dotbyL,u_max);
