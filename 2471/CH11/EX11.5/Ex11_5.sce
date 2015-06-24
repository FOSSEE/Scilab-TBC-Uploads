clear ;
clc;
// Example 11.5
printf('Example 11.5\n\n');
printf('Page No. 318\n\n');

//From the heat balance:- 
//Heat recovered in the boiler = heat gained by the air = heat lost by the flue gases
//=> Q = m_a*Cp_a*dT_a = m_f*Cp_f*dT_f
// As mass flow rate of air/flue gas is not given in the book
//Assuming m_a = m_f = 2.273 kg/s & Cp_a = 1*10^3 J/kg-K

m_a = 2.273;// in kg/s
m_f = m_a;// in kg/s
Cp_a = 1*10^3;// Specific heat capacity of air in J/kg-K
T1_a = 20;// Entrance temperature of air in degree celcius
T2_a = 130;// Exit temperature of air in degree celcius
dT_a = T2_a - T1_a;//in K
T1_f = 260;// Entrance temperature of flue gases in degree celcius
T2_f = 155;// Entrance temperature of flue gases in degree celcius
dT_f = T1_f - T2_f;//in K

//From heat balance:- Q = m_a*Cp_a*dT_a = m_f*Cp_f*dT_f
Cp_f = ((m_a*Cp_a*dT_a)/(m_f*dT_f));// in J/kg-K
Q = m_f*Cp_f*dT_f;// in W
printf('The total heat recovered at full load if %3.2e W',Q)
