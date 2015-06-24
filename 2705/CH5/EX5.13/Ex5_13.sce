clear;
clc;
disp('Example 5.13');

//  aim : To determine the
//  final volume, work done and the change in internal energy

//  Given values
P1 = 700;//  initial pressure,[kN/m^2]
V1 = .015;// initial volume, [m^3]
P2 = 140;//  final pressure, [kN/m^2]
cp = 1.046;//  [kJ/kg K]
cv = .752; //  [kJ/kg K]

//  solution

Gamma = cp/cv;
//  for adiabatic expansion, P*V^gamma=constant, so
V2 = V1*(P1/P2)^(1/Gamma);//  final volume, [m^3]
mprintf('\n The final volume of the gas is V2  =  %f  m^3\n',V2);

//  work done
W = (P1*V1-P2*V2)/(Gamma-1);//  [kJ]
mprintf('\n The work done by the gas is  =  %f  kJ\n',W);

//  for adiabatic process
del_U = -W;//  [kJ]
mprintf('\n The change of internal energy is  =  %f kJ',del_U);
if(del_U>0)
    disp('since del_U>0, so the the gain in internal energy of the gas ')
else
    disp('since del_U<0, so this is a loss of internal energy from the gas')
end

//  End
