clear;
clc;
disp('Example 4.13');

//  aim : To determine 
//  the dryness fraction of steam 
//  and the internal diameter of the pipe

//  Given values

//  steam1
P1 = 2;// pressure before throttling, [MN/m^2]
t = 300;//  temperature,[C]
ms1_dot = 2;// steam flow rate, [kg/s]
P2 = 800;//  pressure after throttling, [kN/m^2]

//  steam2
P = 800;// pressure, [N/m^2]
x2 = .9;//  dryness fraction
ms2_dot = 5; //  [kg/s]

//  solution
//  (a)
//  from steam table specific enthalpy of steam1 before throttling is
hf1 = 3025;//  [kJ/kg]
//  for throttling process specific enthalpy will same so final specific enthalpy of steam1 is
hf2 = hf1;
// hence
h1 = ms1_dot*hf2;// [kJ/s]

//  calculation of specific enthalpy of steam2
hf2 = 720.9;//  [kJ/kg]
hfg2 = 2046.5;//  [kJ/kg]
//  hence
h2 = hf2+x2*hfg2;//  specific enthalpy, [kJ/kg]
h2 = ms2_dot*h2;//  total enthalpy, [kJ/s]

//  after mixing
m_dot = ms1_dot+ms2_dot;//  total mass of mixture,[kg/s]
h = h1+h2;//  Total enthalpy of the mixture,[kJ/s]
h = h/7;//  [kJ/kg]

//  At pressure 800 N/m^2 
hf = 720.9;//  [kJ/kg]
hfg = 2046.5;//  [kJ/kg]
//  so total enthalpy is,hf+x*hfg, where x is dryness fraction of mixture and which is equal to h
//  hence
x = (h-hf)/hfg;// dryness fraction after mixing
mprintf('\n (a) The condition of the resulting mixture is dry with dryness fraction  =  %f \n',x);

//  (b)
// Given
C = 15;//  velocity, [m/s]
//  from steam table
v = .1255;//  [m^/kg]
A = ms1_dot*v/C;//  area, [m^2]
//  using ms1_dot = A*C/v, where A is cross section area in m^2 and
//  A = %pi*d^2/4, where d is diameter of the pipe 

//  calculation of d
d = sqrt(4*A/%pi); // diameter, [m]

mprintf('\n (b) The internal diameter of the pipe is  =  %f mm \n',d*1000);

//  End
