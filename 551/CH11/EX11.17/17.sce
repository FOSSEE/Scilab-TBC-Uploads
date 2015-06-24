clc
// C2H6 + 3.5O2 → 2CO2 + 3H2O
// C2H6 + (0.9)*(3.5) O2 + (0.9)*(3.5)*(79/21)N2→a CO2 + b CO + 3H2O + (0.9)*(3.5)*(79/21)*N2

// a+b=2
// 2*a+b+3=0.9*3.5*2
// a=1.3
// b=0.7
// C2H6 + (0.9)*(3.5) O2 + (0.9)*(3.5)*(79/21)*N2→ 1.3CO2 + 0.7CO + 3H2O + (0.9)*(3.5)*(79/21)N2

n=1.3+0.7+0.9*3.5*(79/21);

CO2=1.3/n*100;
CO=0.7/n*100;
N2=11.85/n*100;

disp("Volumetric analysis of dry products of combustion is as follows ")

disp("CO2 =")
disp(CO2)
disp("%")

disp("CO =")
disp(CO)
disp("%")

disp("N2 =")
disp(N2)
disp("%")