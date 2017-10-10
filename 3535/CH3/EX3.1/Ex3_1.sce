//Chapter 3, Example 3.1, Page 66
clc
clear
//Energy required to remove electron in the ground state
//Obtaining values from table 1.5
h = 6.626*10**-34 // J s
m = 9.109*10**-31 // kg
e = 1.6022*10**-19 // C
E0 = 8.854*10**-12 // F m^-1
E1 = -(m*(2*e**2)**2)/(8*E0**2*h**2)
EJ = E1/(1.6022*10**-19) // converting to eV
printf("\n E1 in Joules = %e J",E1);
printf("\n E1 in eV = %f EV",EJ);

//Answer may vary due to round off error
