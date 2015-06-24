clear;
clc;

// Stoichiometry
// Chapter 2
// Basic Chemical Calculations


// Example 2.13
// Page 24
printf("Example 2.13, Page 24 \n \n");

// solution


//mass %
m1 = 13.70 // HCl
m2 = 8.67 // NaCl
m3 = 100 // H2O
m = m1+m2+m3 // mass of solution
w1 = m1/m*100
w2 = m2/m*100
w3 = m3/m*100

printf("mass percent of HCl is "+string(w1)+" , \nmass percent of NaCl is "+string(w2)+"and \nmass percent of H2O is "+string(w3)+". \n \n \n")
M1=36.4609 //HCl
M2=58.4428 //NaCl
M3=18.0153 //H2O
n1=m1/M1 //HCl
n2=m2/M2 //NaCl
n3=m3/M3 //H2O
n=n1+n2+n3
N1=n1/n*100
N2=n2/n*100
N3=n3/n*100
printf("Mole percent of HCl is "+string(N1)+" , \nMole percent of NaCl is "+string(N2)+"and \nMole percent of H2O is "+string(N3)+".")
