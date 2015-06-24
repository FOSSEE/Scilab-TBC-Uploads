// Computation of ionisation constant from pH of a weak acid

clear;
clc;

printf("\t Example 15.9\n");

pH=2.39;// pH of the HCOOH acid solution

InitHCOOH=0.1;//initial concentration of the solution
H=10^(-pH);//[H+] ion concentration from the definition of pH, M

Ka=(H^2)/(InitHCOOH-H);//ionisation constant of the acid, M, Ka=[H+]*[HCOO-]/[HCOOH]

printf("\t the ionisation constant of the given solution is : %4.2f*10^-4 M \n",10^4*Ka);

//End
