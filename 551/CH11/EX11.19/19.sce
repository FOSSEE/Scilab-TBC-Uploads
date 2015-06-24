clc
disp("(i) The stoichiometric A/F ratio")

// 1 kg of coal contains 0.82 kg C and 0.10 kg H2.
// Let the oxygen required for complete combustion = x moles
// the nitrogen supplied with the oxygen = x*79/21=3.76*x
// 0.82/12*C+0.10/2*H2 + x CO2 + 3.76x N2 → a CO2 + b H2O + 3.76 x N2
a=0.82/12; // Carbon balance
b=0.10/2; //Hydrogen balance
x=(2*a+b)/2; // Oxygen balance

Stoichiometric_AF_ratio=2.976/0.233;
disp("Stoichiometric AF ratio =")
disp(Stoichiometric_AF_ratio)

n=a+b+3.76*x;

CO2=0.068/n*100;
H2=0.05/n*100;
N2=3.76*0.093/n*100;

disp("the analysis of the products is")
disp("CO2 =")
disp(CO2)
disp("%")

disp("H2 =")
disp(H2)
disp("%")

disp("N2 =")
disp(N2)
disp("%")