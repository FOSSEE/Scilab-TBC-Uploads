clear;
clc;
disp('Example 9.2');

//  aim : To determine
//  the minimum 
//  thickness of the lagging required

//  Given values
r1 = 75/2;// external radious of the pipe,[mm]
L = 80;// length of the pipe,[m]
m_dot = 1000;// flow of steam, [kg/h]
P = 2;// pressure, [MN/m^2]
x1 = .98;// inlet dryness fraction
x2 = .96;// outlet dryness fraction
k = .08;// thermal conductivity of of pipe, [W/m/K]
t2 = 27;// outside temperature,[C]

//  solution
//  using steam table  at 2 MN/m^2 the enthalpy of evaporation of steam is,
hfg = 1888.6;// [kJ/kg]
//  so heat loss through the pipe is
Q_dot = m_dot*(x1-x2)*hfg/3600;// [kJ]

// also from steam table saturation temperature of steam at 2 MN/m^2 is,
t1 = 212.4;// [C]
// and for thick pipe, Q_dot=k*2*%pi*L*(t1-t2)/log(r2/r1)
// hence
r2 = r1*exp(k*2*%pi*L*(t1-t2)*10^-3/Q_dot);// [mm]

t = r2-r1;// thickness, [mm]

mprintf('\n The minimum thickness of the lagging required is  =  %f  mm\n',t);

//  End
