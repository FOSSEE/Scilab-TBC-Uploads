//Chapter 4, Example 4.1, Page 86
clc
clear
//Binding energy
mn = 1.0078250
mp = 1.0086649
M = 4.0026032 // mass of He
MD = 2*mn+2*mp-M //Mass defect
BE = MD*931.5
printf("\n Mass defect = %f u",MD);
printf("\n Nuclear binding energy = %f MeV",BE); // answer provided in the textbook is wrong
//Answer may vary due to round off error
