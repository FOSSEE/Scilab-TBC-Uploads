//Example 3.18
clear;
clc;

//Given
DHOH=463;//bond energy of O-H bond in kJ
DHCO=350;//bond energy of C-O bond in kJ
DHCC=348;//bond energy of C-C bond in kJ
DHCH=413;//bond energy of C-H bond in kJ
DHOO=249.17;//half of the bond energy in oxygen molecule in kJ
DHHH=217.94;//half of the bond energy in hydrogen molecule in kJ
DHC=716.7;//energy required to obtain free carbon atom from graphite in kJ

//To determine enthalpy of formation of dimethyl ether
BE=(6*DHCH)+(2*DHCO);//total bond enthalpy in kJ
EA=(6*DHHH)+(2*DHC)+DHOO;//enthalpy of atomization in kJ
delHf=EA-BE;//enthalpy of formation in kJ
mprintf('Enthalpy of formation of dimethyl ether = %f kJ',delHf);
//end