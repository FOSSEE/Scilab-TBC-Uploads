clear;
clc;
funcprot(0);

//given data
N_R = 8.0;//non-dimensional length
Cp = 0.7;//from Figure 7.26
Ag = 2.8;//from Figure 7.26

//Calculations
Cp_id = 1-(1/Ag^2);
eff_d = Cp/Cp_id;
theta = (180/%pi)*atan((1/N_R)*(sqrt(Ag) -1));

//Results
printf('The efficiency of a conical low speed diffuser = %.3f',eff_d);
printf('\n The included angle of the cone = %.1f deg.',2*theta);
