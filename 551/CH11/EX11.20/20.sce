clc

// C + O2 → CO2
// 2H2 + O2 → 2H2O
// S + O2 → SO2

O2_req=2.636; //kg

AF=O2_req/0.233;
disp("The stoichiometric A/F ratio =")
disp(AF)

disp("(i) Actual A/F ratio =")
AF_act=AF+0.3*AF;
disp(AF_act)

disp("(ii) Wet and dry analyses of products of combustion by volume")

// As per actual A/F ratio, N2 supplied = 0.767 * 14.7 = 11.27 kg
// Also O2 supplied = 0.233 * 14.7 = 3.42 kg

// In the products then, we have
// N2 = 11.27 + 0.01 = 11.28 kg
// excess O2 = 3.42 – 2.636 = 0.78 kg

n_wet=0.5208;
n_dry=0.5008;

disp("Analysis of wet products is as follows :")

disp("CO2 =")
CO2=0.0734/n_wet*100;
disp(CO2)
disp("%")

disp("H2O =")
H2O=0.0200/n_wet*100;
disp(H2O)
disp("%")

disp("SO2 =")
SO2=0.0002/n_wet*100;
disp(SO2)
disp("%")

disp("O2 =")
O2=0.0244/n_wet*100;
disp(O2)
disp("%")

disp("N2 =")
N2=0.4028/n_wet*100;
disp(N2)
disp("%")

disp("Analysis of dry products is as follows :")

disp("CO2 =")
CO2=0.0734/n_dry*100;
disp(CO2)
disp("%")

disp("SO2 =")
SO2=0.0002/n_dry*100;
disp(SO2)
disp("%")

disp("O2 =")
O2=0.0244/n_dry*100;
disp(O2)
disp("%")

disp("N2 =")
N2=0.4028/n_dry*100;
disp(N2)
disp("%")