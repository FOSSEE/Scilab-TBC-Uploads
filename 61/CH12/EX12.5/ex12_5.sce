//ex12.5
Z_in=2*10^6;
Z_out=75;
A_ol=200000;
R_f=220*10^3;
R_i=10*10^3;
B=R_i/(R_i+R_f);    //B is attenuation
Z_in_NI=(1+A_ol*B)*Z_in;
Z_out_NI=Z_out/(1+A_ol*B);
A_cl_NI=1+(R_f/R_i);
disp(Z_in_NI,'input impedance in ohms')
disp(Z_out_NI,'output impedance in ohms')
disp(A_cl_NI,'closed loop voltage gain')