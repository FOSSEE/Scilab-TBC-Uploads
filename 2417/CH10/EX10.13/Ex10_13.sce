//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 10.13\n\n\n");
// Chapter 10 : Refrigeration
// Problem 10.13  (page no. 536) 
// Solution

//A VACUUM REFRIGERATION SYSTEM 
//A vacuum refrigeration system is used to cool water from 90F to 45F
h1=58.07; //Unit:Btu/lbm //enthalpy
h2=13.04; //Unit:Btu/lbm  //enthalpy
h3=1081.1; //Unit:Btu/lbm //enthalpy
m1=1; //mass //unit:lbm
//m2=1-m3 //unit:lbm
//Now, m1*h1 = m2*h2 + m3*h3
//Putting the values and arranging the equation,
m3=(m1*h1-h2)/(h3+h2); //The mass of vapour that must be removed per pound //unit:lbm
printf("The mass of vapour that must be removed per pound of entering water is %f lbm",m3);


