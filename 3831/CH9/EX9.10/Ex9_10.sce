// Example 9_10
clc;funcprot(0);
// Given data
m=500;// lbm/s
T=50.0;// °F
y_1=1.00;// The inlet height in ft
y_2=1.80;// The exit height in ft
v_1=8.00;// The inlet velocity ft/s
v_2=5.14;// The exit velocity in ft/s
g=32.174;// ft/s^2
g_c=32.174;// lbm.ft/(lbf.s^2)
c=1.00; // Btu/(lbm.R)

// Solution
h_L12=(y_2-y_1)^3/(4*y_1*y_2);// ft
E_dr=(m*(g/g_c)*h_L12)/778.17;// The energy dissipation rate in Btu/s
S_p=m*c*log(1+(g*[(h_L12)]/(c*g_c*(T+459.67))));// The entropy production rate in Btu/(s.R)
printf('\nThe energy dissipation rate=%0.4f Btu/s \nThe entropy production rate,S_p=%0.4f Btu/(s.R)',E_dr,S_p);
