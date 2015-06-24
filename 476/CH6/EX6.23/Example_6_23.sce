//A Textbook of Chemical Engineering Thermodynamics
//Chapter 6
//Thermodynamic Properties of Pure Fluids
//Example 23


clear;
clc;


//Given:
//Equation of state: PV = RT(1-0.00513P)
P = [1 5 10]; //pressures in bar

//To determine fugacity coefficient at given pressures
//According to Eq. 6.118 (Page no. 228)
//RTd(ln f) = VdP = RT(d ln P - 0.00513dP)
//phi = %e^(-0.00513*P)

for i = 1:3
    phi(i) = %e^(-0.00513*P(i));
    mprintf('\n Fugacity coeffecient at %i bar is %f',P(i),phi(i));
end

//end