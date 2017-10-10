//Chapter 3: Thermodynamic and Chemical Equilibrium
//Problem: 10
clc;

//Declaration of Constant
R = 8.314                   //in J / K

//Declaration of Variables
V_O2 = 2.8                  //in litres
V_H2 = 19.6                 //in litres

// Solution
na = V_O2 / 22.4            //in mol
nb = V_H2 / 22.4            //in mol
Xa = na / (na + nb)
Xb = nb / (na + nb)
d_s = (- R) * (na * log(Xa) + nb * log(Xb))

mprintf("The increase in entropy on mixing is : %.3f J /K",d_s)
