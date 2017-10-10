//Example 5_3
clc;clear;funcprot(0);
// Given values
m=5000;// Mass flow rate of water in kg/s
W_eout=1862;//The electric power generated is measured in kW
rho=1000;// The density of water in kg/m^3
h=50;// The depth of the water in m
g=9.81;// m/s^2
e_min=g*h;// kJ/kg
e_mout=0;// kJ/kg
n_gen=0.95;// The generator efficiency

// Calculation 
//(a)
dE_mech=(m*(e_min-e_mout))/1000;//kW
n_o=(W_eout/dE_mech);// The over all efficiency
printf('(a)The over all efficiency,n_o=%0.2f\n',n_o);
//(b)
n_t=n_o/n_gen;// )The mechanical efficiency of the turbine
printf('(b)The mechanical efficiency of the turbine,n_t=%0.2f\n',n_t);
//(c)
W_sout=n_t*dE_mech;// kW
printf('(c)The shaft power output,W_shaft,out=%0.0f kW\n',W_sout);
//The answer is a bit different due to rounding off error in textbook
