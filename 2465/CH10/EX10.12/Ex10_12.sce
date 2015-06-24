//Chapter-10,Example 12,Page 255
clc();
close();

R=8.316    //gas constant

F=96500    //Farade's constant

n=1

T=298      //temperature in Kelvin

E0_AgCl=-0.2223   

E0_Ag=0.798

//cell reaction...Ag + Cl- <----> AgCl

E0_cell =E0_Ag + E0_AgCl

//at equilibrium two electrode potential s will be equal
//   E0_cell = (2.303*R*T/n*F)*log10(K)

Ksp = 10^-(E0_cell*n*F/(2.303*R*T))

printf('for AgCl solution Ksp = ')

disp(Ksp)

printf('    mol^2/l^2')
