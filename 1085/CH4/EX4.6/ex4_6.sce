//Exam:4.6
clc;
clear;
close;
Enthalpy=6.02;//enthalpy of fusion of ice is 6.02 kJ/mol
E_h=20.5;//Hydrogen bond energy (in kJ/mol)
//There are two moles of hydrogen bonds per mole of H2O in ice.
H_b=Enthalpy/(2*E_h);//the fraction of hydrogen bonds that are broken when ice melts
disp(H_b,'fraction of hydrogen bonds that are broken when ice melts=')