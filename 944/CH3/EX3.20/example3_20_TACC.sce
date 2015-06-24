//example 3.20

clear;
clc;

//Given:
//MgBr2(s)-->Mg(s)+Br2(l)-->Mg(g)+Br2(l)-->Mg(g)+Br2(g)-->Mg(g)+2Br(g)-->Mg+2(g) + 2e(g) + 2Br(g)-->Mg+2(g) + 2Br-(g)
H1=-524;//enthalpy of formation of MgBr2(s) from its element [KJ/mol]
H2=148;//enthalpy of sublimation of Mg(s) [KJ/mol]
H3=31;//enthalpy of vaporization of Br2(l) [KJ/mol]
H4=193;//enthalpy of dissociation Br2 to 2Br(g) [KJ/mol]
H5=2187;//enthalpy of ionization of Mg(g) to Mg+2(g) [KJ/mol]
H6=-650;//enthalpy of formation of Br-(g) [KJ/mol]

//to find the lattice enthalpy of magnesium bromide
H=-H1+H2+H3+H4+H5+H6;//lattice enthalpy [KJ/mol]
printf("\n H(lattice enthalpy of magnesium bromide)=%f KJ/mol.\n",H);
