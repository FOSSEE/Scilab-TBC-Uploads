//Section-8,Example-1,Page no.-IC.9
//To calculate the lattice energy of NaCl crystals from the given data.
clc;
N_o=6.023*10^23
A=1.748
Z1=1                //Z+
Z2=1                //Z-
e=1.602*10^-19
e_o=8.854**10^-12
r_o=0.2814*10^-9
n=8
U_c=((-N_o*A*Z1*Z2*e^2)/(4*%pi*e_o*r_o))*(1-(1/n))
disp(U_c,' Lattice energy of NaCl crystals(kJ/mol)')
