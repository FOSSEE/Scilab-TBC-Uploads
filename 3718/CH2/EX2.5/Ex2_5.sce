//Chapter 2: Spectroscopy and Photochemistry
//Problem: 5
clc;

//Declaration of Constants
pi = 3.141                  // Pi
c = 3 * 10 ** 10            // Speed of light,in cm/s

//Declaration of Variables
v_bar = 2140                // Fundamental vibrating freq, per cm
m_C = 19.9 * 10 ** -27      // Atomic mass of C,in kg
m_O = 26.6 * 10 ** -27      // Atomic mass of O,in kg

// Solution
mu = m_O * m_C / (m_C + m_O)
k = 4 * (pi * c * v_bar) ** 2 * mu

mprintf("The force constant of the molecule is %.3e N/m",k)
