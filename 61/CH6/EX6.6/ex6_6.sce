//ex6.6
R_C=10^3;
R_L=5*10^3;
r_e=6.58;
R_c=(R_C*R_L)/(R_C+R_L);
disp(R_c,'ac collector resistor in ohms')
A_v=R_c/r_e;
disp(A_v,'gain with load')