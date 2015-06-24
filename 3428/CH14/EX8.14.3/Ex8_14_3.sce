//Section-8,Example-2,Page no.-IC.11
//To calculate the lattice energy of KCl from the following data.
clc;
dl_Hf=-440.3
dl_Hs=90.9
H_d=240
I=418.7
E=-348.7
U=dl_Hf-dl_Hs-((1/2)*H_d)-I-E
disp(U,'Lattice energy of KCl(kJ/mol)')
