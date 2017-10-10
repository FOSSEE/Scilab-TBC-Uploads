clc;funcprot(0);//EXAMPLE 3.12
// Initialisation of Variables
r1=0.066;.......//Radius of Mg+2 from Appendix B in nm
r2=0.132;.......//Radius of O-2 from Appendix B  in nm
Am1=24.312;.......//Atomic masses of Mg+2 in g/mol
Am2=16;.......//Atomic masses of O-2 in g/mol
Na=6.02*10^23;......//Avogadro’s number
//CALCULATIONS
a0=2*r1+2*r2;...........//Lattice constant for MgO in nm
rho=((4*Am1)+(4*16))/((a0*10^-8)*Na);.....//Density of MgO in g/cm^3
disp(a0*10^-8,"Lattice constant for MgO in cm:")
disp(rho,"Density of MgO in g/cm^3:")
