//ex14.9
V_in=3;
I_EBO=40*10^-9;
R1=68*10^3;
//voltage output for log amplifier
V_OUT=-0.025*log(V_in/(I_EBO*R1));
disp(V_OUT,'output voltage in volts')