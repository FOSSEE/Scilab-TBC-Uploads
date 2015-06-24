clc

disp("(i) Stoichiometric air fuel ratio ")
// C_aH_bO_cN_d

a=84/12;
b=10;
c=3.5/16;
d=1.5/14;

// C7 H10 O0.218 N0.107 + x O2 + x*(79/21)N2 → p CO2 + q H2O + r N2

p=7;
q=10/2;
x=(2*p+q-c)/2;
r=(d+2*x*(79/21))/2;

AF=(x*32+x*79/21*28)/100;
disp("Stoichiometric A/F ratio =")
disp(AF)

disp("(ii) Percentage composition of dry flue gases by volume with 20 per cent excess air :")

// C7H10O0.218N0.107 + (1.2)(9.39) O2 + (1.2)(9.39)*(79/21)N2 → 7CO2 + 5H2O + (0.2)(9.39) O2 + (1.2)(35.4) N2

n=7+0.2*9.39+1.2*35.4;

disp("Percentage composition of dry flue gases by volume is as follows :")
disp("CO2 =")
CO2=7/n*100;
disp(CO2)
disp("%")

disp("O2 =")
O2=1.878/n*100;
disp(O2)
disp("%")

disp("N2 =")
N2=42.48/n*100;
disp(N2)
disp("%")