//ex7.4
I_DSS=3*10^-3;
V_GS_off=-6;
y_fs_max=5000*10^-6;
V_GS=-4;
g_m0=y_fs_max;
g_m=g_m0*(1-(V_GS/V_GS_off));
I_D=value_of_I_D(3*10^-3,-4,-6)
disp(g_m,'forward transconductance in Siemens')
disp(I_D,'value of I D in amperes')