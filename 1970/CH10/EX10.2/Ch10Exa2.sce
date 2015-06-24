// Scilab code Exa10.2 : : Page-455 (2011) 
clc; clear;
E_x = 7.70; // Energy of the alpha particle, MeV
E_y = 4.44; // Energy of the proton, MeV
m_x = 4.0;  // Mass number of alpha particle
m_y = 1.0;   // Mass number of protium ion
M_X = 14;   // Mass number of nitrogen nucleus
M_Y = 17;  // Mass number of oxygen nucleus
theta = 90*3.14/180; //  Angle between incident beam direction and emitted proton, degree
A_x = 4.0026033; // Atomic mass of alpha particle, u
A_X = 14.0030742; // Atomic mass of nitrogen nucleus, u
A_y = 1.0078252;  // Atomic mass of proton, u
Q = ((E_y*(1+m_y/M_Y))-(E_x*(1-m_x/M_Y))-2/M_Y*sqrt((m_x*m_y*E_x*E_y))*cos(theta))/931.5;     // Q-value, u
A_Y = A_x+A_X-A_y-Q;     // Atomic mass of O-17, u
printf("\nThe Q-value of the reaction = %9.7f u \nThe atomic mass of the O-17 = %10.7f u", Q, A_Y);

// Result
// The Q-value of the reaction = -0.0012755 u 
// The atomic mass of the O-17 = 16.9991278 u 
//  Atomic mass of the O-17 : 16.9991278 u 