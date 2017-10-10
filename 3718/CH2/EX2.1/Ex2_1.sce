//Chapter 2: Spectroscopy and Photochemistry
//Problem: 1
clc;

//Declaration of Constants
m_br79 = 78.9183            // Mass of 79Br,in amu
m_br81 = 80.9163            // Mass of 91Br,in amu
Na = 6.022 * 10 ** 23       // Mole constant,per mol
pi = 3.141                  // Pi
c = 3 * 10 ** 10            // Speed of light,in cm/s

//Declaration of Variable
wave_no = 323.2             // Wave no. of fund. vibration of 79Br - 81Br, /cm

// Solution
mu = (m_br79 * m_br81) / ((m_br79 + m_br81) * Na)

k = 4 * (pi * c * wave_no) ** 2 * mu * 10 ** -3

mprintf("The force constant of the bond is %.2e N/m\n",k)
