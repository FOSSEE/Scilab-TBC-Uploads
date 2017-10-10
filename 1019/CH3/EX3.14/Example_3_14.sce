//Example 3.14
clear;
clc;

//Given 
delHsubLi = 161;//heat of sublimation of Li in kJ 
delHsubNa = 109;//heat of sublimation of Na in kJ
delHd = 122;//heat of dissociation of chlorine in kJ
delHaff = -350;//electron affinity of Cl in kJ
delHipLi = 520;// ionization potential of Li in kJ
delHipNa = 496;//ioization potential of Na in kJ
delHfLiCl = -410;//heat of formation of LiCl in kJ
delHfNaCl = -411;//heat of formation of NaCl in kJ
delHLisol= -35.1;//heat of solution of LiCl in kJ
delHNasol= 4.3;//heat of solution of NaCl in kJ

//To determine the (a) enthalpy change (b) heat of hydration
delHcLiCl = delHsubLi+delHd+delHipLi+delHaff-delHfLiCl;//born haber cycle
mprintf('(a) heat of formation of LiCl crystal = %f kJ',delHcLiCl);
delHcNaCl = delHsubNa+delHd+delHipNa+delHaff-delHfNaCl;//born haber cycle
mprintf('\n heat of formation of NaCl crystal = %f kJ',delHcNaCl);
delHLiCl = delHLisol-delHcLiCl;//heat of hydration of LiCl in kJ
delHNaCl = delHNasol-delHcNaCl;//heat of hydration of NaCl in kJ
mprintf('\n \n (b) heat of hydration of LiCl = %f kJ',delHLiCl);
mprintf('\n heat of hydration of NaCl = %f kJ',delHNaCl);
//end