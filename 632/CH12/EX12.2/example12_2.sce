//clc()
//C(s) + 2H2(g) = CH4(g)          Hf = ?
Hc = -393.51;//kJ/mol
Hh2 = -285.84;//kJ/mol
Hch4 = - 890.4;//kJ/mol
//heat of reaction can be calculated from the heat of combustion data using following equation, the heat of reaction is the sum of the heat of combustion of all the reactants in the desired reaction minus the sum of the heat of combustion of all the products of the desired reaction. Here the reactants are one mole of Carbon and two moles hydrogen, and the product is one mole of methane,there heat of reaction is
Hf = 1 * Hc + 2 * Hh2 - 1 * Hch4;
disp("kJ",Hf,"Heat of formation of methane = ")