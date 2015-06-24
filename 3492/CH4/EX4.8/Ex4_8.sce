clc
//Chapter4
//Ex_8
//Given
e=1.6*10^-19 // in coulombs
h=6.626*10^-34 //in Js
me=9.1*10^-31 //in Kg
d=10.5 // in g/cm
Mat=107.9 //g/mol
NA=6.023*10^23 // mol^-1
E_ctr=5 //in ev
E_ctr=E_ctr*e // in Joules
S_band=2*(16*%pi*sqrt(2)/3)*(me/h^2)^(3/2)*(E_ctr)^(3/2)// in states m^-3
//convesion of units
S_band=S_band*10^-6 //in states cm^-3
disp(S_band,"No. of states in the band in states cm^-3 is")
n_Ag=d*NA/Mat
disp(n_Ag,"No.of atoms per unit volume in silver in atoms per cm3 is")
