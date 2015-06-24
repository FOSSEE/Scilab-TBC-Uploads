clc
disp("(i) Combustion equation")

// x CH4 + y O2 + z N2 → 10.0 CO2 + 0.53 CO + 2.37 O2 + a H2O + 87.1 N2

z=87.1;
y=z*(79/21);
x=10+0.53;
a=2*x;

//10.53 CH4 + 23.16 O2 + 87.1 N2 → 10.0 CO2 + 0.53 CO + 2.37 O2 + 21.06 H2O + 87.1 N2

disp("CH4 + 2.2 O2 + 8.27 N2 → 0.95 CO2 + 0.05 CO + 2H2O + 0.225 O2 + 8.27 N2")

disp("(ii) Air-fuel ratio ")

AF_mole=2.2+8.27;
disp("air-fuel ratio on a mole basis =")
disp(AF_mole)
disp("moles air/mole fuel")

AF_mass=AF_mole*28.97/(12+1*4);
disp("air-fuel ratio on a mass basis =")
disp(AF_mass)
disp("air/kg fuel")

// CH4 + 2O2 + 2*(79/21)N2 → CO2 + 2H2O + (2)*(79/21)N2
AF_theor=(2+2*(79/21))*28.97/(12+1*4);
disp("theoretical air-fuel ratio =")
disp(AF_theor)
disp("kg air/kg fuel")

disp("(iii) Percent theoretical air =")
%theo=AF_mass/AF_theor*100;
disp(%theo)
disp("%")