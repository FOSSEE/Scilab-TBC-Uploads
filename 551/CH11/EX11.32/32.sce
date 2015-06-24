clc

// C6H6 + 7.5O2  → 6CO2 + 3H2O (vapour)
dH0=-3169100; //kJ
n_R=1+7.5;
n_P=6+3;
R0=8.314;
T0=298; //K

dU0=(dH0-(n_P-n_R)*R0*T0)/(6*12+1*6);
disp("dU0 =")
disp(dU0)
disp("kJ/kg")