clc
disp("(i) Air and benzene vapour ")

// C6H6(g) + 7.5O2(g) + 7.5*(79/21)N2(g) = 6CO2(g) + 3H2O(g) + 7.5*(79/21)*N2(g)

LHVp=3169500; //kJ/mole

LHVv=LHVp/((12*6+6*1)+(7.5*32)+7.5*(79/21)*28)
disp("LHVv per kg of mixture =")
disp(LHVv)
disp("kJ/kg")

m=54; //kg/kg mole of fuel
h_fg=2442; //kJ/kg

HHVp=(LHVp+m*h_fg)/(78+240+790);
disp("HHVp per kg of mixture =")
disp(HHVp)
disp("kJ/kg")

disp("(ii) Air and octane vapour ")
LHVp=5116200; //kJ/mole of C8H18

// C8H18(g) + 12.5O2(g) → 8CO2(g) + 9H2O(g) + 12.5*(79/21)N2(g)

LHVp1=LHVp/((12*8+18*1)+12.5*32+12.5*79/21*28);
disp("LHVp per kg of mixture =")
disp(LHVp1)
disp("kJ/kg")

m=9*18;
HHVp=LHVp+m*h_fg;
HHVp1=HHVp/(114+400+1317);
disp("HHVp per kg of mixture =")
disp(HHVp1)
disp("kJ/kg")