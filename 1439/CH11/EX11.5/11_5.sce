clc 
//initialisation of variables
n= 2.46*10^19 //molecules cm^-3
n1= 3.24*10^13 //molecules cm^-3
l= 3.61*10^-8
//CALCULATIONS
L= (sqrt(2)*%pi*l^2*n)^-1
L1=(sqrt(2)*%pi*l^2*n1)^-1 
//RESULTS
printf ('mean free path= %.2e cm',L)
printf ('\n mean free path= %.2e cm',L1)


//ANSWER GIVEN IN THE TEXTBOOK IS WRONG
