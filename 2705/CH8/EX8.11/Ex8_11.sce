clear;
clc;
disp('Example 8.11');

// aim : To determine
//  the energy carried away by the dry flue gas/kg of fuel burned

// given values
C = .78;//  mass composition of carbon
H2 = .06;// mass composition of hydrogen
O2 = .09;// mass composition of oxygen
Ash = .07;// mass composition of ash
Ea = .50;//  excess air for combustion
aO2 = .23;// mass composition of O2 in air 
Tb = 273+20;// boiler house temperature, [K]
Tf = 273+320;// flue gas temperature, [K]
c = 1.006;// specific heat capacity of dry flue gas, [kJ/kg K]

// solution
// for one kg of fuel
sO2 = (8/3*C+8*H2);// stoichiometric O2 required, [kg/kg fuel]
sO2a = sO2-O2;// stoichiometric O2 required from air, [kg/kg fuel]
sair = sO2a/aO2;// stoichiometric air required, [kg/kg fuel]
ma = sair*(1+Ea);// actual air supplied/kg of fuel, [kg]
// total mass of flue gas/kg fuel is
mf = ma+1;// [kg]
mH2 = 9*H2;//H2 produced, [kg] 
// hence, mass of dry flue gas/kg coall is
m = mf-mH2;// [kg]
Q = m*c*(Tf-Tb);// energy carried away by flue gas, [kJ]
mprintf('\n The energy carried away by the dry flue gas/kg is  =  %f kg\n',Q);

//  End
