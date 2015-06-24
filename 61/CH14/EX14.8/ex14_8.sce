//ex14.8
V_in=2;
I_R=50*10^-9;
R1=100*10^3;
//voltage output for log amplifier
V_OUT=-0.025*log(V_in/(I_R*R1));
disp(V_OUT,'output voltage in volts')