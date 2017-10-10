//Calculate the Van't Hoff factor and the Degree of dissociation for Chalcium Chloride (CaCl2)

//Example 8.10

clc;

clear;

m1=0.01;  //Molarity of CaCl2 in mol

m2=0.01;  //Molarity of sucroce in mol

op1=0.605;  //Osmotic pressure of CaCl2 in atm

op2=0.224;  //Osmotic pressure of sucrose in atm

P1=op1;  //Actual number of partical in solution at equilibrium 

P2=op2;  //Number of particals in solution before dissociatio 

i=P1/P2;  //Van;t Hoff factor for CaCl2

printf("Vant Hoff factor = %.2f",i); 

v1=1;  //Number of cation

v2=2;  //Number of anion

v=v1+v2;  //Total number of ions

alpha=(i-1)/(v-1);  //Dgree of dissociation

printf("\nDegree of dissociation = %.2f",alpha);
