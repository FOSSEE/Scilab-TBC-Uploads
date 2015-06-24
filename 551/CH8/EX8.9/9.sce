clc
v=44; //m^3/kg-mol
T=373; //K

disp("(i) Using Van der Waals’ equation")

a=362850; //N*m^4/(kg-mol)^2
b=0.0423; //M^3/kg-mol
R0=8314; //J/kg K

p=((R0*T/(v-b)) - a/v^2);
disp("Pressure using Van der Waals equation=")
disp(p)
disp("N/m^2")


disp("(ii) Using perfect gas equation")

p=R0*T/v;
disp("Pressure using perfect gas equation=")
disp(p)
disp("N/m^2")