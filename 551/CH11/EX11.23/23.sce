clc
// C2H6O + 3O2 + 3*79/21 N2 → 2CO2 + 3H2O + 3*79/21 N2
R0=8.314*10^3; //kJ/kg K
m=46; //kg

disp("(i) Volume of reactants per kg of fuel ")

n=1+3+3*79/21;
T=323; //K
p=1.013*10^5; //Pa

V=n*R0*T/p;

disp("Vr=")
Vr=V/m;
disp(Vr)
disp("m^3")

disp("(ii) Volume of products per kg of fuel")

n=2+3+3*79/21;
T=403; //K
p=1*10^5; //Pa

V=n*R0*T/p;

Vp=V/m;
disp("Vp=")
disp(Vp)
disp("m^3")