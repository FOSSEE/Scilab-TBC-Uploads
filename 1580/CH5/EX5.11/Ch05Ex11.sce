// Scilab Code Ex 5.11 : Page-5.24 (2004)
clc;clear;
h = 6.626e-34; // Planck's const, Js
m = 9.1e-31;    // Mass of electron in kg
L = 1e-10; //  Side of the box in m
n1 = 1; //   Ground state quantum number
n2 = 2; //  first quantum number
n3 = 3;     //  second quantum number
e = 1.6e-19;    // charge on electron, C
E1 = (h^2)/(8*m*(L^2))*((n1)^2);   //Ground state Energy , joule
E2 = (h^2)/(8*m*(L^2))*((n2)^2);   //first state Energy , joule
E3 = (h^2)/(8*m*(L^2))*((n3)^2);   //second state Energy , joule

printf("\nGround state Energy = %2.3e joule", E1);
printf("\nFirst state Energy = %2.3e joule", E2);
printf("\nSecond state Energy = %2.3e joule", E3);


// Results
// Ground state Energy = 6.031e-18 joule
// First state Energy = 2.412e-17 joule
// Second state Energy = 5.428e-17 joule
