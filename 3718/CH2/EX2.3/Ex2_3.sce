//Chapter 2: Spectroscopy and Photochemistry
//Problem: 3
clc;

//Declaration of Constants
Na = 6.022 * 10 ** 23       // Mole constant,permol

//Declaration of Variables
d_NaCl = 2.36 * 10 ** -10           // Intermolecular dist. NaCl,in m
m_Cl = 35 * 10 ** -3                // Atomic mass, in kg /mol
m_Na = 23 * 10 ** -3                // Atomic mass, in kg /mol

// Solution
mu = m_Na * m_Cl / ((m_Na + m_Cl) * 10 ** -3 * Na) * 10 ** -3

I = mu * d_NaCl ** 2

mprintf("The reduced mass of NaCl is %.3e kg\n",mu)
mprintf(" The moment of inertia of NaCl is %.3e kg m square",I) 
