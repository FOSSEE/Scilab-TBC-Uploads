//calculating pH
//Example 6.2
clc
clear
//for quinhydrone electrode
Ecell=0.284//Emf of cell in V
pH=(0.6996-0.2422-Ecell)/0.0591//pH of the solution
printf('Thus the pH of the solution = %2.3f V',pH)
