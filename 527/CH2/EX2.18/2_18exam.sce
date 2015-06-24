//Engineering and Chemical Thermodynamics
//Example 2.18
//Page no :84

clear ; clc ;
m_dot_1 = 10 ; //[kg/s]
h_cap_1 = 3238.2 ;//[kJ/kg], Super heated steam at 500*C & 200bar
h_cap_2 = 93.3 ;//[kL/kg], subcooled liquid at 20*C & 100bar
h_cap_3 = 2724.7 ;//{kJ/kg}, Super heated vapour at 100bar 

m_dot_2 = m_dot_1 * (h_cap_1 - h_cap_3) / (h_cap_3 - h_cap_2);
disp(" Example: 2.18   Page no : 84") ;
printf('\n      Flow of liquid stream = %.2f kg/s',m_dot_2);