//chapter 5
//example 5.15
//Compare uncertainty in the velocity of electron and proton
//page 108
clear;
clc;
//given
m_e=9.1E-31; // in Kg (mass of electron)
m_p=1.67E-27; // in Kg (mass of proton)
dx_p=1; // in nanometer (uncertainty in position of electron)
dx_n=1; // in nanometer (uncertainty in position of proton)
//calculate
// since dp=h/(4*pi*dx)
// since h/(4*pi) is constant and dx is same for electron and proton 
// therefor both electron and proton have same uncertainty in the momentum
// since dv=dp/m  and  dp is same for both
// therefore dv_e/dv_p=m_p/m_e
// therefore
K=m_p/m_e; // ratio of uncertainty in the velocity of electron and proton
printf('\nThe ratio of uncertainty in the velocity of electron to that of proton is\t=%.f',K);
