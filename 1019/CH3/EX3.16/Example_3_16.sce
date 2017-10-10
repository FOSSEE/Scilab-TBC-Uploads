//Example 3.16
clear;
clc;

//Given
DHOH=463;//bond energy of O-H bond in kJ
DHCO=351;//bond energy of C-O bond in kJ
DHCC=348;//bond energy of C-C bond in kJ
DHCH=413;//bond energy of C-H bond in kJ
DHOO=249.2;//half of the bond energy in oxygen molecule in kJ
DHHH=217.97;//half of the bond energy in hydrogen molecule in kJ
DHC=716.68;//energy required to obtain free carbon atom from graphite in kJ

//To determine enthalpy of formation of ethyl alcohol
BE=(5*DHCH)+DHCC+DHCO+DHOH;//total bond enthalpy in kJ
EA=(6*DHHH)+(2*DHC)+DHOO;//enthalpy of atomization in kJ 
delHf=EA-BE;//enthalpy of formation in kJ
mprintf('Enthalpy change = %f kJ',delHf);
//end