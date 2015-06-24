clc;
clear all;
lss = 5; // Length of steel wire in m 
as = 4e-5; // Cross section area of steel wire in square meters
lc = 6; // Length of copper wire in m
ac = 5e-5; // Cross section area of copper wire in square meters
Ratio = (lss/as)*(ac/lc); // Ratio os youngs modulus of steel to copperAfter eliminating force and delta change
disp(Ratio,'The ratio of youngs modulus of steel to copper is '); 
