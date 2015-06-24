//ex10.7
V_GS=-10;
I_GSS=25*10^-9;
R_G=10*10^6;
C1=0.001*10^-6;
R_in_gate=abs((V_GS/I_GSS));
R_in=(R_in_gate*R_G)/(R_G+R_in_gate);
f_c=1/(2*%pi*R_in*C1);
disp(f_c,'critical frequency in hertz')