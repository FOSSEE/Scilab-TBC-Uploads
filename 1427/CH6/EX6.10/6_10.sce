//ques-6.10
//Calculating pH of a solution
clc
E=0.48;//emf of the cell (in V)
Es1=0.34;//standard emf of copper (in V)
pH=(E-Es1)/0.0592;
printf("The pH of the solution is %.3f.",pH);
