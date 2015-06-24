//Example 11.1

clear;
clc;

printf("\tExample 11.1\n");

p0_A=106;  //Vapour pressure of n-heptane  in kN/m^2
p0_B=73.7;  //Vapour pressure of toluene  in kN/m^2
P=101.3;  //Total pressure in kN/m^2

xA=(P-p0_B)/(p0_A-p0_B);

yA=p0_A*xA/P;

printf("\nMole fraction in liquid phase is : %.3f",xA);
printf("\nMole fraction in vapour phase is : %.3f\n",yA);

//End