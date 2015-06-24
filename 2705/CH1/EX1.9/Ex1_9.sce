clear;
clc;
disp('Example 1.9');


//  Given values
m_dot = 20.4; //  mass flowrate of petrol, [kg/h]
c = 43; //  calorific  value of petrol, [MJ/kg]
n = .2; //  Thermal efficiency of engine

//  solution
m_dot = 20.4/3600; // [kg/s]
c = 43*10^6; //  [J/kg]

//  power output
P_out = n*m_dot*c; //  [W]

mprintf('\n The power output of the engine is  =  %f  kJ\n',P_out*10^-3);
 
//  power rejected

P_rej = m_dot*c*(1-n); //  [W]
P_rej = P_rej*60*10^-6; //  [MJ/min]

mprintf('\n The energy rejected by the engine is  =   %f  MJ/min \n',P_rej);

//End
