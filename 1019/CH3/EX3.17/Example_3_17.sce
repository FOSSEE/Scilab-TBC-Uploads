//Example 3.17
clear;
clc;

//Given
DHCC=348;//bond energy of C-C bond in kJ
DHCH=413;//bond energy of C-H bond in kJ
DHHH=436;//half of the bond energy in hydrogen molecule in kJ
DHC2C=610;//bond energy of C=C bond in kJ

//To determine enthalpy change
delHf=DHC2C+DHHH-(2*DHCH)-DHCC;//enthalpy change in kJ
mprintf('Enthalpy change = %f kJ',delHf);
//end