clear;
clc;
// Example 22.4
printf('Example 22.4\n\n');
//page no. 669
// Solution 

// Take milk plus water in tank to be system
// Given
T1_water = 70  ;// Temperature of entering water  -[degree C]
T2_water = 35 ;// Temperature of exiting water  -[degree C]
T1_milk = 15 ;//Temperature of entering milk  -[degree C]
T2_milk = 25 ;//Temperature of exiting milk  -[degree C]

// Get additional data from steam table for water and milk,assuming milk to have same properties as that of water.
H_15 = 62.01 ;//Change in specific internal energy-[kJ/kg]
H_25 = 103.86  ;//Change in specific internal energy-[kJ/kg]
H_35 = 146.69  ;//Change in specific internal energy-[kJ/kg]
H_70 = 293.10  ;//Change in specific internal energy-[kJ/kg]

// Assumptions to simplify Equation 22.8 are:
printf('\nAssumptions to simplify Equation 22.8 are:\n');
printf('1. Change in KE and PE of system = 0.\n');
printf('2. Q = 0 ,because of way we picked the system,it is is well insulated.\n');
printf('3. W = 0,work done by or on the system.\n');

//Basis m_milk = 1 kg/min , to directly get the answer  .
m_milk = 1 ;// Mass flow rate of milk-[kg/min]
// By applying above assumtions eqn. 22.8 reduces to del_H = 0 .Using it get m_water-
m_water = (m_milk*(H_15 - H_25))/(H_35 - H_70) ; // Mass flow rate of water-[kg/min]
m_ratio = m_water/m_milk ;// Mass flow rate of water per kg/min of milk-[kg/min]
printf('\nMass flow rate of water per kg/min of milk is %.2f (kg water/min )/(kg milk/min).',m_ratio);