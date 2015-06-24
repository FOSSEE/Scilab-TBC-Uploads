//ex10.13;
C_iss=8*10^-12;
C_rss=3*10^-12;
g_m=6500*10^-6;    //in Siemens
R_D=1*10^3;
R_L=10*10^6;
R_s=50;
C_gd=C_rss;
C_gs=C_iss-C_rss;
R_d=R_D*R_L/(R_D+R_L);
A_v=g_m*R_d;
C_in_Miller=C_gd*(A_v+1);
C_in_tot=C_in_Miller+C_gs;
f_c=1/(2*%pi*C_in_tot*R_s);
disp(f_c,'critical frequency of input RC circuit in hertz')