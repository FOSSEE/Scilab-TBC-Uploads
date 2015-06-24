//Chemical Engineering Thermodynamics
//Chapter 15
//Fuel Cells

//Example 15.1
clear;
clc;

//Given
del_F = -56.29;//Standard free energy change in Kcal/Kgmole
del_H = -68.317;//Standard heat of reaction in Kcal/kgmole
F = 23.06;//Electro-chemical equivalent in Kcal/volt
J = 2;//Valance for H2

//To Calculate the emf of the cell, cell efficiency and heat to be removed to maintain isothermal conditions
//Basis: 1 Kgmole of H2
//From equation 15.4 (page no 355)
E = -del_F/(F*J);
mprintf('1.The emf of the cell is %f volt.',E);
n = del_F/del_H*100;
mprintf('\n 2.The cell efficiency is %f percent.',n);
Q = del_H-del_F;
mprintf('\n 3.The heat to be removed is %f Kcal to maintain the temperature at 25 degree celsius.',Q);
//end