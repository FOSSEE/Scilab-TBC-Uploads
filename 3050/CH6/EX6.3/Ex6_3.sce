//calculating pH
//Example 6.3
clc
clear
//for hydrogen electrode
Ecell=0.6734//Emf of cell in V
pH=(Ecell-0.2422)/0.0591//pH of the solution
printf('Thus the pH of the solution = %2.3f ',pH)
