//ex5.5
R1=68*10^3;
R2=47*10^3;
R_C=1.8*10^3;
R_E=2.2*10^3;
V_CC=-6;
V_BE=0.7;
B_DC=75;
R_IN_base=B_DC*R_E;
disp('input resistance as seen from base is not greater than 10 times R2 so it should be taken into account')
//R_IN_base  in parallel with R2
V_B=((R2*R_IN_base)/(R2+R_IN_base)/(R1+(R2*R_IN_base)/(R2+R_IN_base)))*V_CC;
V_E=V_B+V_BE;
I_E=V_E/R_E;
I_C=I_E;
V_C=V_CC-I_C*R_C;
V_CE=V_C-V_E;
disp(I_C,'collector current in amperes')
disp(V_CE,'collector emitter voltage in volts')