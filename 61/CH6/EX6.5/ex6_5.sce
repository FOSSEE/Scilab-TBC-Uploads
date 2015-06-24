 //ex6.5
r_e=6.58;    //from ex6.3
R_C=1*10^3;
R_E=560;
A_v=R_C/(R_E+r_e);
disp(A_v,'gain without bypass capacitor')
A_v=R_C/r_e;
disp(A_v,'gain in the presence of bypass capacitor')