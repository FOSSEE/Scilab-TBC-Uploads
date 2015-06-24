clc
R0=8.314;

M_O2=32;
M_N2=28;
M_Ar=40;
M_CO2=44;

R_O2=R0/M_O2; //kJ/kg K
R_N2=R0/M_N2; //kJ/kg K
R_Ar=R0/M_Ar; //kJ/kg K
R_CO2=R0/M_CO2; //kJ/kg K

%O2=0.2314;
%N2=0.7553;
%Ar=0.0128;
%CO2=0.0005;

disp("(i) Gas constant for air")
R=%O2*R_O2 + %N2*R_N2 + %Ar*R_Ar + %CO2*R_CO2;
disp("R=")
disp(R)
disp("kJ/kg K")

disp("(ii) Apparent molecular weight.")
M=R0/R;
disp("M=")
disp(M)