clc

// C2H6O + 3O2 + 3*79/21 N2 → 2CO2 + 3H2O + 3*79/21 N2

O2_req=3*32/46;

AF=O2_req/0.233;
disp("Stoichiometric A/F ratio =")
disp(AF)

mix=0.8; //mixture strength

AF_actual=AF/mix;
disp("Actual A/F ratio =")
disp(AF_actual)

// C2H6O + 1.25*(3 O2 + 3*79/21 N2) → 2CO2 + 3H2O + 0.25*3O2 + 1.25*3*79/21 N2

n=2+3+0.75+14.1;

disp("Hence wet analysis is")

disp("CO2 =")
CO2=2/n*100;
disp(CO2)
disp("%")

disp("H2O =")
H2O=3/n*100;
disp(H2O)
disp("%")

disp("O2 =")
O2=0.75/n*100;
disp(O2)
disp("%")

disp("N2 =")
N2=14.1/n*100;
disp(N2)
disp("%")

nd=2+0.75+14.1; //total dry moles

disp("Hence dry analysis is : ")

disp("CO2 =")
CO2=2/nd*100;
disp(CO2)
disp("%")

disp("O2 =")
O2=0.75/nd*100;
disp(O2)
disp("%")

disp("N2 =")
N2=14.1/nd*100;
disp(N2)
disp("%")

mix=1.3;
AF_act=AF/mix;
disp("Actual A/F ratio =")
disp(AF_act)