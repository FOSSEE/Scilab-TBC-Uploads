// Computation of mass from concentration and volume

clear;
clc;

printf("\t Example 4.6\n");

K2Cr2O7=294.2;//mol mass of K2Cr2O7, g

M=2.16;//Concentration of K2Cr2O7, M

V=0.250;//volume of K2Cr2O7, L

moles=M*V;//moles of K2Cr2O7

mass=moles*K2Cr2O7;

printf("\t the mass of the K2Cr2O7 needed is : %4.0f g\n",mass);

//End
