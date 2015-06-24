//Engineering and Chemical Thermodynamics
//Example 2.4
//Page no :55

clear ; clc
//From steam table specific enthalpy at state1 and state2 are
h_cap_1 = 3373.6 ; //[kJ/kg]
h_cap_2 = 2675.5 ; //[kJ/kg]

m_dot1 = 10; //[kg/s],As we are dealing with steady state
m_dot2 = 10; //[kg/s]

//Neglecting heat dissipation compared to shaft work we have
// m_dot1*h_cap_1 - m_dot2*h_cap_2 + Ws_dot =  0
Ws_dot = m_dot1 * (h_cap_2 - h_cap_1) ; //[kW]
disp(" Example: 2.4   Page no : 55") ;
printf('\n       Power generated = %g kW',Ws_dot);
