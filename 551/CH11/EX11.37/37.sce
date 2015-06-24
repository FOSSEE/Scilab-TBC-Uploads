clc
m_CO2=44/12*0.88; //kg
m_H2O=18/2*0.12; //kg
u_fg=2304; //kJ/kg
h_fg=2442; //kJ/kg
HHVv=45670; //kJ/kg
R0=8.3143; //kJ/kg K
T=298; //K
disp("(i) (LHV)v =")
LHVv=HHVv-m_H2O*u_fg;
disp(LHVv)
disp("kJ/kg")

disp("(ii) (HHV)p, (LHV)p")

//1 mole fuel+x/32 O2-->3.23/44 CO2 + 1.08/18 H2O

x=32*(m_CO2/44+m_H2O/18/2);

// 1 kg fuel + 3.31 kg O2 = 3.23CO2 + 1.08H2O

dn=(m_CO2/44-x/32);

HHVp=HHVv-dn*R0*T;
disp("HHVp =")
disp(HHVp)
disp("kJ/kg")

LHVp=HHVp-m_H2O*h_fg;
disp("LHVp =")
disp(LHVp)
disp("kJ/kg")