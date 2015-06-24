clear;
clc;
disp('Example 12.2');

//  aim : To determine the increases in pressure, temperature and internal energy per kg of air

//  Given values
T1 = 273;// [K]
P1 = 140;// [kN/m^2]
C1 = 900;// [m/s]
C2 = 300;// [m/s]
cp = 1.006;// [kJ/kg K]
cv =.717;// [kJ/kg K]

// solution
R = cp-cv;// [kJ/kg K]
Gamma = cp/cv;// heat capacity ratio
//  for frictionless adiabatic flow, (C2^2-C1^2)/2=Gamma/(Gamma-1)*R*(T1-T2)

T2 =T1-((C2^2-C1^2)*(Gamma-1)/(2*Gamma*R))*10^-3; //  [K]
T_inc = T2-T1;// increase in temperature [K]

P2 = P1*(T2/T1)^(Gamma/(Gamma-1));// [MN/m^2]
P_inc = (P2-P1)*10^-3;// increase in pressure,[MN/m^2]

U_inc = cv*(T2-T1);//  Increase in internal energy per kg,[kJ/kg]
mprintf('\n The increase in pressure is  =  %f  MN/m^2\n',P_inc);
mprintf('\n Increase in temperature is  =  %f  K\n',T_inc);
mprintf('\n Increase in internal energy is  =   %f  kJ/kg\n',U_inc);

// there is minor variation in result

//  End
