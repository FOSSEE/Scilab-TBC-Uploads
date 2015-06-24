//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 10.9\n\n\n");
// Chapter 10 : Refrigeration
// Problem 10.9  (page no. 518) 
// Solution
 
//From Appendix 3,using the HFC-134a tables, enthalpies are
h1=41.6; //Unit:Btu/lbm //enthalpy
h2=41.6; //Unit:Btu/lbm //Throttling gives h1=h2 //enthalpy
h3=104.6; //Unit:Btu/lbm //enthalpy
//From the consideration that s3=s4,
s3=0.2244; //Unit:Btu/(lbm*F) //s=entropy
h4=116.0; //Unit:Btu/lbm //enthalpy
printf("The heat extracted is %f Btu/lbm\n\n",h3-h1);
printf("The work required is %f Btu/lbm\n\n",h4-h3);
COP=(h3-h1)/(h4-h3); //Coefficient of performance
printf("The Coefficient of performance(COP) of this ideal cycle is %f",COP);
