//ex7.10
R_S=680;
I_D=0;
V_GS=I_D*R_S;    //FOR I_D=0A
disp(V_GS,'V_GS in Volts, at I_D=0A')
I_DSS=4*10^-3;
I_D=I_DSS;
V_GS=I_D*R_S;    //FOR I_D=4mA
disp(V_GS,'V_GS in Volts, at I_D=4mA')
disp('Plotting load line using the values of V_GS at I_D=0 and 4mA, we find the intersection of load line with transfer characteristic to get Q-point values of V_GS=-1.5V and I_D=2.25mA')