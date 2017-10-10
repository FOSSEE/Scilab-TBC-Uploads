//Chapter 4, Example 4.2, Page 89
clc
clear
//Binding energy
O15 = 15.0030654 // atomic mass of O15 isotope
mn = 1.00866492
O16 = 15.9949146 // atomic mass of O16 isotope
c2 = 931.5 // C^2 in MeV
S = (O15+mn-O16)*c2
printf("\n Binding energy = %f MeV",S); 
//Answer may vary due to round off error
