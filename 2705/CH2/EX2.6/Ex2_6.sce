clear;
clc;
disp('Example 2.6');


//  Given values
m_dot = 4.5; // mass flow rate of air, [kg/s]
Q = -40; // Heat transfer loss, [kJ/kg]
del_h = -200; // specific enthalpy reduce, [kJ/kg]

C1 = 90; // inlet velocity, [m/s]
v1 = .85; // inlet specific volume, [m^3/kg]

v2 = 1.45; //  exit specific volume, [m^3/kg]
A2 = .038;  //  exit area of turbine, [m^2]

//  solution

//  part (a)
//  At inlet, by equation[4], m_dot=A1*C1/v1
A1 = m_dot*v1/C1;//inlet area, [m^2]
mprintf('\n (a) The inlet area is, A1 =  %f  m^2 \n',A1);

//  part (b), 
//  At outlet, since mass flow rate is same, so m_dot=A2*C2/v2, hence
C2 = m_dot*v2/A2; // Exit velocity,[m/s]
mprintf('\n (b) The exit velocity is, C2 =  %f  m/s \n',C2);

//  part (c)
//  using steady flow equation, h1+C1^2/2+Q=h2+C2^2/2+W
W = -del_h+(C1^2/2-C2^2/2)*10^-3+Q; //  [kJ/kg]

//  Hence power developed is
P = W*m_dot;//  [kW]
mprintf('\n (c) The power developed by the turbine system is  =  %f kW \n',P);

//  End

