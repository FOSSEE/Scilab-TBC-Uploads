clear
clc
//to find work done on the system
//to find heat added to the system
//to find change in internal energy of the system

//Given:
//refer to figure 23-23 from page no. 535
//mass of water
m = 1.00//in Kg
//initial volume of liquid
vi = 1.00e-3//in m^3
//final volume of steam
vf = 1.671//in m^3
//atmospheric pressure
p = 1.01e5//in Pa
//molar gas constant
R = 8.31//in J/mol.K

//Solution:
//applying laws of thermodynamics
//applying constant pressure relationship
//work done on the system
W = (-p*(vf-vi))//in KJ
//latent heat of vaporization
L = 2256//in KJ/Kg 
//heat added to the system
Q = L*m//in KJ
//change in internal energy of the system
delta_Eint = Q+W//in KJ

printf ("\n\n Work done on the system W = \n\n %.2e J" ,W);
//answer of Q and delta_Eint slightli changes.But answer by scilab program is same as that of calculator answer
printf ("\n\n Heat added to the system Q = \n\n %4i KJ" ,Q);
printf ("\n\n Change in internal energy of the system delta_Eint = \n\n %4i KJ" ,delta_Eint);
