clear;
clc;

printf("\tExample 6.3\n");

//From draph in the question
//stress and strain can be obtained

si2=150;           // in MPa
si1=0;
e2=0.0016;
e1=0;
d0=12.8*10^-3;    //Initial Diameter in m

printf("\n\tPart A");
//Young's Modulus = stress/strain
E=(si2-si1)/(e2-e1);
printf("\nModulus of elasticity is %.2f GPa",E/10^3);

//End