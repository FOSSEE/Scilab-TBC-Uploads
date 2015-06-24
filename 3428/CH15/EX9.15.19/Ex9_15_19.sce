//Section-9,Example-2,Page no.-E.32
//To find the valency of Mercurous ion with the help of given cell.
clc;
C_1=0.001
C_2=0.01
F=96500
R=8.314
T=291
E_cell=0.029
n=((2.303*R*T)/(E_cell*F))*log10(C_2/C_1)
disp(n,'valency of Mercurous ion')
