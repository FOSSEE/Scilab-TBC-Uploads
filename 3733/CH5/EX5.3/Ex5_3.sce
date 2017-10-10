//Example 5_3
clc;funcprot(0);
// Given values
P=100;// Power in kW
CV=4000;// Calorific value in kJ/m^3
n_o=0.20;// Over all efficiency of the plant

// Calculation
V=(3600*P)/(CV*n_o);// m^3/hr
printf('The volume of gas required per hour,V=%0.0f m^3/hr\n',V);
