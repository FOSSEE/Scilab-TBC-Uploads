clc
//Chapter4
//Ex_9
//Given
e=1.6*10^-19 // in coulombs
h=6.626*10^-34 //in Js
me=9.1*10^-31 //in Kg
d=8.96 // in g/cm
Mat=63.5 // g/ mol 
NA=6.023*10^23 // mol^-1
n=d*NA/Mat //in cm^-3
n=n*10^6 //in m^-3
E_FO=(h^2/(8*me))*(3*n/%pi)^(2/3) //in J
E_FO=E_FO/e //in eV
disp(E_FO,"Fermi energy at 0 Kelvin in eV is")
E_FO=(h^2/(8*me))*(3*n/%pi)^(2/3) //in J
v_e=sqrt(6*E_FO/(5*me))
disp(v_e,"Average speed of conduction electrons in m/s is")
