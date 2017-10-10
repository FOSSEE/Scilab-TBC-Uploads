//Page 37
clc;funcprot(0);//EXAMPLE 2.4
// Initialisation of Variables
Es=1.8;........//Electro negativity of Silicon from fig.2-8
Eo=3.5;........//Electro negativity of Oxygen from  fig.2-8
//CALCULATION
F=exp(-0.25*(Eo-Es)^2);........//Fraction covalent of   SiO2 
disp(F,"Fraction covalent of   SiO2 :")
