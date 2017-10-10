//Chapter-4,Example 4,Page 93
clc;
close;

q_v=-97000   //in cal

R= 8.314     // gas constant

T = 273 + 200   // temperature in  Kelvin

n_1= 1    //mols of gaseous reactant

n_2= 1    // mols of gaseous product

delta_n= n_2-n_1

//q_p= q_v + delta_n*R*T

q_p= q_v + delta_n*R*T

printf('the heat combustion of carbon is %.f cals',q_p)
