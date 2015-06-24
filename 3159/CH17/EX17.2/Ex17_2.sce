// calculate the polarization of a BaTio3 crystal
clc
Ti_shift= 0.06 // shift of TI ion in angstrom
O_shift = 0.06 // shift of oxygen ion of side face in angstrom
o_shift = 0.08 //shift of oxygen ion of top and bottom faces in angstrom
O_charge  = 2 // unit charge on oxygen ion of side face
o_charge  = 2 // unit charge on oxygen ion of top and bottom faces
Ti_charge  = 4 // unit charge on titanium ion 
n_O = 2 // number of oxygen ion of side face
n_o = 1 // number of oxygen ion of top and bottom face
n_Ti = 1 // number of titanium ion 
e = 1.6e-19 // amount of one unit charge in coulomb
printf("\n Example 17.2")
p_Ti = n_Ti*Ti_charge *e*Ti_shift*1e-10
p_O = n_O*O_charge*e*O_shift*1e-10
p_o = n_o*o_charge*e*o_shift*1e-10
Total = p_Ti+p_O+p_o
P = Total/(4.03*3.98^2*1e-30)
printf("\n Polarization of BaTiO3 crystal is %.2f Cm^-2 ", P)

