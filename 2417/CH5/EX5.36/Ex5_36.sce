//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 5.36\n\n\n");
// Chapter 5 : Properties Of Liquids And Gases
// Problem 5.36  (page no. 219) 
// Solution

//Because the tank volume is 10 ft^3,the final specific volume of the steam is 10 ft^3/lbm.Interpolations in Table A.2 yield a final pressure of 42 psia.The heat    added is simply difference in internal energy between the two states.
u2=1093.0; //internal energy //Btu/lbm
u1=117.95; //internal energy //Btu/lbm
q=u2-u1; //heat added //Btu/lbm
printf("The final pressure is 42 psia and the heat added is %f Btu/lbm\n",q);
