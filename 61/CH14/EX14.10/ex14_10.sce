//ex14.10
I_EBO=40*10^-9;
V_in=175.1*10^-3;
R_f=68*10^3;
V_OUT=-I_EBO*R_f*exp(V_in/0.025);
disp(V_OUT,'output voltage in volts')