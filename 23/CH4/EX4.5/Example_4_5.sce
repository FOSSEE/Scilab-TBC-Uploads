clc;
clear;

//Example 4.5
//Caption : Program to Find the Standard Heat at 298.15K

//4HCL + O2 --> 2H2O + 2Cl2
del_H_HCL=-92.307;//KJ Heat Of Formation
del_H_H2O=-241.818;//KJ

//4HCL --> 2H2 + 2Cl2
del_H_298_HCL=4*(-1)*del_H_HCL;
//2H2 + O2 --> 2H2O
del_H_298_H2O=2*del_H_H2O;
//Final
del_H_298=del_H_298_HCL+del_H_298_H2O;

disp('KJ',del_H_298,'Standard Heat')

//End