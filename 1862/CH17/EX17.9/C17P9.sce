clear
clc
//to find reduced mass of molecule
//to find effective force constant

// GIVEN:
//refer to figure 17-22 from page no. 390
//mass of hydrogen atom
m1 = 1.007825//in u
//mass of isotop cl-35
m2 = 34.968853//in u
//mass of isotop cl-37
m3 = 36.965903//in u
//vibrational frequency
f = 8.5e13//in Hz
//mass
M = 1.66e-27//in Kg/u

// SOLUTION
//reduced mass of H35cl
m = (m1*m2)/(m1+m2)//in u
//reduced mass of H37cl
m_1 = (m1*m3)/(m1+m3)//in u
//effective force constant
k = 4*(%pi^2)*(f^2)*m_1*M//in N/m

printf ("\n\n Reduced mass of H35cl m = \n\n %.6f u",m)
printf ("\n\n Reduced mass of H37cl m_1 = \n\n %.6f u",m_1)
//answer is slightly different than ans. in book.But ans. by scilab program is same as that of calculator. 
printf ("\n\n Effective force constant k = \n\n %3i N/m",k)
