// Scilab code Ex4.4: Pg 121 (2005)
clc; clear;

// Part (b)
// For easy calculations, assume all variables to be unity
m_p = 1;     // Mass of proton, a.m.u
m_a = 4*m_p;    // Mass of alpha particle, a.m.u
Valpha = 1;   // Velocity of alpha particle before collision, m/s
v_p = (2*m_a*Valpha)/(m_a + m_p);    // Velocity of proton after collision, m/s
v_a = ((m_a - m_p)*(Valpha))/(m_a + m_p);     // Velocity of alph particle after collision, m/s
p_change = ((v_a - Valpha)/(Valpha))*100;     // Percentage change in velocity of alpha particle
printf("\nVelocity of proton after collision = %4.2fVa m/s", v_p);
printf("\nVelocity of alpha particle after collision = %4.2fVa m/s", v_a);
printf("\nPercentage change in velocity of alpha particle = %2d percent", p_change);

// Result
// Velocity of proton after collision = 1.60 V_a m/s
// Velocity of alph particle after collision = 0.60 V_a m/s
// Percentage change in velocity of alpha particle = -40 percent
