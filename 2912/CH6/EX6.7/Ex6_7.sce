//chapter 6
//example 6.7
//Calculate velocity of electron and proton
//page 148-149
clear;
clc;
//given
E=10; // in eV (kinetic energy for each electron and proton)
m_e=9.1E-31; // in Kg (mass of electron)
m_p=1.67E-27; // in Kg (mass of proton)
e=1.6E-19; // in C (charge of electron)
//calculate
E=E*e; // changing unit from eV to J
// since E=m*v^2/2
// therefore  v=sqrt(2E/m)
v_e=sqrt(2*E/m_e); // calculation of kinetic energy of electron
printf('\nThe kinetic energy of electron is \tv_e=%1.3E m/s',v_e);
v_p=sqrt(2*E/m_p); // calculation of kinetic energy of proton
printf('\nThe kinetic energy of proton is \tv_p=%1.3E m/s',v_p);
// Note: The answer in the book for both kinetic energy of electron and that of proton is wrong due to calculation mistake
