// Ex6_6 Page:104 (2014)
clc;clear;
e = 1.6e-019;    // Energy conversion factor, J/eV
h_cross = 1.054e-034;    // reduced Planck's constant, Js
r = 1.131e-010;    // Intermolecular separation of CO molecule, m
m_Carbon = 19.9217e-027;    // Mass of carbon atom, kg
m_Oxygen = 26.5614e-027;    // Mass of oxygen atom, kg
mu = m_Carbon*m_Oxygen/(m_Carbon+m_Oxygen);    // Reduced mass of CO molecule, kg
I = mu*r^2;    // Moment of inertia of CO molecule, kg-Sq.m
delta_E = h_cross^2/(I*e);    // Energy difference between the first two rotational energy levels of CO molecule, eV
printf("\nThe energy difference between the first two rotational energy levels of CO molecule = %4.2e eV", delta_E);

// Result 
// The energy difference between the first two rotational energy levels of CO molecule = 4.77e-004 eV