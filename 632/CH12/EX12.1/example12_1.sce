//clc()
N = 100;//mol gas mixture burned
//CO(g) + 1/2 O2(g) = CO2 -                    Hr1 = - 282.91kJ/mol
//H2(g) + 1/2 O2(g) = H2O -                    Hr2 = - 241.83kJ/mol
Hr1 = - 282.91;//kJ/mol
Hr2 = - 241.83;//kJ/mol
Nco1 = 20;
Nh21 = 30;
Nn21 = 50;
Htotal = Nco1*Hr1 + Nh21*Hr2;
disp("kJ",-Htotal,"the amount of heat liberated on the complete combustion of 100mol of the gas mixture = ")
Ncoreac = Nco1 * 0.9;
Nh2reac = Nh21 * 0.8;
Htotal1 = Ncoreac*Hr1 + Nh2reac*Hr2;
disp("kJ",-Htotal1,"the amount of heat liberated if only 90% of CO and 80% of H2 react of 100mol of the gas mixture = ")