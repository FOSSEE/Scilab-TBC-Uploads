clear;
clc;

//Example - 11.4
//Page number - 387
printf("Example - 11.4 and Page number - 387\n\n");

//Given
//H = a*x_1 + b*x_2 +c*x_1*x_2

//The values of the constants are
a = 15000;//[J/mol]
b = 20000;//[J/mol]
c = -2000;//[J/mol]

//(1)
//Enthalpy of pure component 1 = H1 is obtained at x_2 = 0, thus 
x_2 = 0;
x_1 = 1;
H1 = a*x_1 + b*x_2 +c*x_1*x_2;//[J/mol]
printf("(a).The enthalpy of pure component 1 is %f J/mol\n",H1);

//Similarly for component 2,
//Enthalpy of pure component 2 = H2 is obtained at x_1 = 0, thus 
x_1_prime = 0;
x_2_prime = 1;
H2 = a*x_1_prime + b*x_2_prime +c*x_1_prime*x_2_prime;//[J/mol]
printf("    The enthalpy of pure component 2 is %f J/mol\n\n",H2);

//(b)
//This part involves proving a relation in which no mathematics and no calculations are involved.
//For prove refer to this example 11.4 on page number 387 of the book.

//(c)
//From part (b), we have the relation
//H1_bar = a + c*(x_2^(2))
//H2_bar = b + c*(x_1^(2))

//For enthalpy of component 1 at infinite dilution, x_1 approach 0 and thus x_2 approach 1, therefore
x_1_c = 0;
x_2_c = 1;
H1_infinite = a + c*(x_2_c^(2));//[cm^(3)/mol]
printf("(C).The enthalpy of componenet 1 at infinite dilution (at x_1 = 0) is %f J/mol\n",H1_infinite);

//At x_1 = 0.2
x_1_c1 = 0.2;
x_2_c1 = 0.8;
H1_bar_c1 = a + c*(x_2_c1^(2));//[J/mol]
printf("    The enthalpy of componenet 1 at (at x_1 = 0.2) is %f J/mol\n",H1_bar_c1);

//At x_1 = 0.8
x_1_c2 = 0.8;
x_2_c2 = 0.2;
H1_bar_c2 = a + c*(x_2_c2^(2));//[J/mol]
printf("    The enthalpy of componenet 1 at (at x_1 = 0.8) is %f J/mol",H1_bar_c2);

//As x_1 increases, 'H1_bar' approaches the value of 'H1' 

//(d)
//This part involves proving a relation in which no mathematics and no calculations are involved.
//For prove refer to this example 11.4 on page number 387 of the book.


