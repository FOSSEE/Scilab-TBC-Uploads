//ex12.7
R_i=1*10^3;
R_f=100*10^3;
Z_in=4*10^6;
Z_out=50;
A_ol=50000;
B=R_i/(R_i+R_f);    //attenuation
Z_in_I=R_i;    //almost equal to R_i
Z_out_I=Z_out/(1+(A_ol*B));
A_cl_I=-R_f/R_i;
disp(Z_in_I,'input impedance in ohms')
disp(Z_out_I,'output impedance in ohms')
disp(A_cl_I,'closed loop voltage gain')