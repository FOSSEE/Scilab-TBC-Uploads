clc
M_C=12;
M_N=14;
M_O=16;
R=8314; // J/(kg.K)

M_CO=M_C+M_O;
R_CO=R/M_CO;

M_CO2=M_C+2*M_O;
R_CO2=R/M_CO2;

M_NO=M_N+M_O;
R_NO=R/M_NO;

M_N2O=2*M_N+M_O;
R_N2O=R/M_N2O;

disp("Gas constant for CO = ")
disp(R_CO)
disp("J/(kg.K)")

disp("Gas constant for CO2 = ")
disp(R_CO2)
disp("J/(kg.K)")

disp("Gas constant for NO = ")
disp(R_NO)
disp("J/(kg.K)")

disp("Gas constant for N2O = ")
disp(R_N2O)
disp("J/(kg.K)")
