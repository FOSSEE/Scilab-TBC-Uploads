clc
//Chapter4
//Ex_7
//Given
e=1.6*10^-19 // in coulombs
h=6.626*10^-34 //in Js
me=9.1*10^-31 //in Kg
//let x=k*T
x=0.026 // in eV
E=5 //in ev
E=E*e // in Joules
g_E=(8*%pi*sqrt(2))*(me/h^2)^(3/2)*sqrt(E)// in J^-1*m^-3
//convesion of units
g_E=g_E*10^-6*e //in eV^-1 cm^-3
disp(g_E,"density of states at the center of the band in cm^-3*J^-1 is")
//part(b)
n_E=g_E*x // in cm^-3
disp(n_E," No.of states per unit volume within kT about the center in cm^-3 is")
//part(c)
E=0.026 //in eV
E=E*e // in joules
g_E=(8*%pi*sqrt(2))*(me/h^2)^(3/2)*sqrt(E)// in J^-1*m^-3
//convesion of units
g_E=g_E*10^-6*e //in eV^-1 cm^-3
disp(g_E,"density of states at at kT above the band in cm^-3*J^-1 is")
//part(d)
n_E=g_E*x // in cm^-3
disp(n_E," No.of states per unit volume within kT about the center in cm^-3 is")
//solved using the values taken from the solution of textbook
