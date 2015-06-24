//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 10.8\n\n\n");
// Chapter 10 : Refrigeration
// Problem 10.8  (page no. 517) 
// Solution
 
//From Appendix 3,using the Freon-12 tables, enthalpies are
h1=28.713; //Unit:Btu/lbm //enthalpy
h2=28.713; //Unit:Btu/lbm //Throttling gives h1=h2 //enthalpy
h3=78.335; //Unit:Btu/lbm //enthalpy
//From the consideration that s3=s4,
s3=0.16798; //Unit:Btu/(lbm*F) //s=entropy
//Therefore by interpolation in the superheat tables at 90 F,
s=0.16798; //entropy at 90F //Btu/lbm*F
h4=87.192; //Unit:Btu/lbm //enthalpy
printf("The heat extracted is %f Btu/lbm\n\n",h3-h1);
printf("The work required is %f Btu/lbm\n\n",h4-h3);
COP=(h3-h1)/(h4-h3); //Coefficient of performance
printf("The Coefficient of performance(COP) of this ideal cycle is %f",COP);
