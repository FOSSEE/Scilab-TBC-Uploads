clc

// 2H2 + O2 → 2H2O
// 2CO + O2 → 2CO2
// CH4 + 2O2 → CO2 + 2H2O
// C4H8 + 6O2 → 4CO2 + 4H2O

n_O2=0.853; //total moles of O2

disp("(i) Stoichiometric A/F ratio =")
AF=n_O2/0.21;
disp(AF)

disp("(ii) Wet and dry analyses of the products of combustion if the actual mixture is 30% weak :")
AF_act=AF+0.3*AF;
n_N2=0.79*AF_act;
O2_excess=0.21*AF_act-n_O2;

n_wet=5.899;
n_dry=4.915;

disp("Analysis by volume of wet products is as follows :")

disp("CO2 =")
CO2=0.490/n_wet*100;
disp(CO2)
disp("%")

disp("H2O =")
H2O=0.984/n_wet*100;
disp(H2O)
disp("%")

disp("O2 =")
O2=O2_excess/n_wet*100;
disp(O2)
disp("%")

disp("N2 =")
N2=n_N2/n_wet*100;
disp(N2)
disp("%")

disp("Analysis by volume of dry products is as follows :")

disp("CO2 =")
CO2=0.490/n_dry*100;
disp(CO2)
disp("%")

disp("O2 =")
O2=O2_excess/n_dry*100;
disp(O2)
disp("%")

disp("N2 =")
N2=n_N2/n_dry*100;
disp(N2)
disp("%")