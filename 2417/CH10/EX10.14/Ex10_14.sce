//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 10.14\n\n\n");
// Chapter 10 : Refrigeration
// Problem 10.14  (page no. 536) 
// Solution

//In problem 10.13,
//A VACUUM REFRIGERATION SYSTEM 
//A vacuum refrigeration system is used to cool water from 90F to 45F
h1=58.07; //Unit:Btu/lbm //enthalpy
h2=13.04; //Unit:Btu/lbm  //enthalpy
h3=1081.1; //Unit:Btu/lbm //enthalpy
m1=1; //mass //lbm
//m2=1-m3 //unit:lbm
//Now, m1*h1 = m2*h2 + m3*h3
//Putting the values and arranging the equation,
m3=(m1*h1-h2)/(h3+h2); //The mass of vapour that must be removed per pound //unit:lbm
m2=1-m3; //mass //unit:lbm
printf("The mass of vapour that must be removed per pound of entering water is %f lbm\n",m3);
//Now,in problem 10.14,
//The refrigeration effect can be determined as m3*(h3-h1) or m2*(h1-h2)
printf("The refrigeration effect using eqn m3*(h3-h1) is %f Btu/lbm\n",m3*(h3-h1));
printf("The refrigeration effect using eqn m2*(h1-h2) is %f Btu/lbm\n",m2*(h1-h2));
