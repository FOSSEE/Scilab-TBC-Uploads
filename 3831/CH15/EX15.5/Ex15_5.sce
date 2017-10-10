// Example 15_5
clc;funcprot(0);
// Given data
T_DB=90.0;// °F
T_WB=75.0;// °F
phi=50;// The relative humidity in %
w=105*1/7000;// lbm H2O/lbm dry air
M_da=28.97;// lbmdry air/lbmole dry air
M_H2O=18.016;// lbmH2O/lbmoleH2O

// Calculation
w=w*(M_da/M_H2O);// lbmole H2O/lbmole dry air
// From the balanced reaction equation of part a of Example 15.3, we find that the amount of dry air used per mole of fuel is
a_da=21.9*(1+3.76);// moles
a_w=w*a_da;// moles of water
n_H2O=9.00+a_w;// moles per mole of fuel
n_total=111.5;// moles per mole of fuel
X_H2O=n_H2O/n_total;// The mole fraction of water vapor in the exhaust
p_H20=X_H2O*14.7;// psia
// Again, interpolating in Table C.1a in Thermodynamic Tables to accompany Modern Engineering Thermodynamics, we find
T_DP=116.0;//°F
T_DP=(T_DP-32)/1.8;// °C
T_sat=T_DP;// °C
printf("\n(a)The amount of water carried into the engine in the form of inlet humidity,w=%0.4f lbmole H2O/lbmole dry air \n(b)The new dew point temperature of the exhaust products,T_DP=%2.1f°C",w,T_DP);
