//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 5.39\n\n\n");
// Chapter 5 : Properties Of Liquids And Gases
// Problem 5.39  (page no. 226) 
// Solution

//As refering to figure 5.21,it will be seen that the final temperature and enthalpy will both be higher than for the isentropic case.
//80% of the isentropic enthalpy difference
deltah=0.8*122; //change in enthalpy //Btu/lbm
h1=1270; //Btu/lbm //initial enthalpy
h2=h1-deltah; //the final enthalpy //Btu/lbm
printf("The final enthalpy is %f Btu/lbm\n",h2);
printf("and the final pressure is 200 psia\n");
printf("The Mollier chart indicates the final state to be in the wet region,\n");
printf("with 3.1percent moisture content and an entropy of 1.514 Btu/lbm*R");
