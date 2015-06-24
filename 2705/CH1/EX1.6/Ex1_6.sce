clear;
clc;
disp('Example 1.6');


//  Given values
m_cop = 2; //  mass of copper vessel, [kg]
m_wat = 6; //  mass of water, [kg]
c_wat = 4.19; //  specific heat capacity of water,  [kJ/kg K]

t1 = 20; //  initial temperature, [C]
t2 = 90; //  final temperature, [C]

// From the table of average specific heat capacities
c_cop = .390;  // specific heat capacity of copper,[kJ/kg k]

// solution
Q_cop = m_cop*c_cop*(t2-t1); //  heat required by copper vessel, [kJ]

Q_wat = m_wat*c_wat*(t2-t1); //  heat required by water, [kJ]

// since there is no heat loss,so total heat transfer is sum of both
Q_total = Q_cop+Q_wat ; //  [kJ]

mprintf(' \n Required heat transfer to accomplish the change  =  %f  kJ\n',Q_total);

//End

