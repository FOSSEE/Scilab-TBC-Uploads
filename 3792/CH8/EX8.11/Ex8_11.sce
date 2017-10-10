// SAMPLE PROBLEM 8/11
clc;funcprot(0);
// Given data
m_c=3;// The mass of collar in kg
m_l=1.2;// The mass of the links in kg
k=1.5;// The stiffness of the spring in kN/m
g=9.81;// The acceleration due to gravity in m/s^2

// Calculation
P=(m_c*g)+(2*(1/2)*m_l*g);// The compression P in N
delta_st=P/(k*10^3);// The static deflection of the spring in m
omega_n=sqrt(750/1.9);// Hz;
printf("\nThe natural frequency of vertical vibration,omega_n=%2.2f Hz",omega_n);
