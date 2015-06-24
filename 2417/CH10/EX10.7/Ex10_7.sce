//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 10.7\n\n\n");
// Chapter 10 : Refrigeration
// Problem 10.7  (page no. 510) 
// Solution
 
//From Appendix 3,110 psig corresponds to 96 F, enthalpies are
h1=30.14; //Unit:Btu/lbm //enthalpy
h2=30.14; //Unit:Btu/lbm //Throttling gives h1=h2 //enthalpy
h3=75.110; //Unit:Btu/lbm //enthalpy
//From the consideration that s3=s4,at -20F,
s3=0.17102; //Unit:Btu/(lbm*F) //s=entropy
//Therefore by interpolation in the Freon-12 superheat table at these values,
h4=89.293; //Unit:Btu/lbm //enthalpy
printf("Solution for (a),\n");
COP=(h3-h1)/(h4-h3); //Coefficient of performance
printf("Coefficient of performance is %f\n\n",COP);
printf("Solution for (b),\n");
printf("The work of compression is %f Btu/lbm\n\n",h4-h3);
printf("Solution for (c),\n");
printf("The refrigatering effect is %f Btu/lbm\n\n",h3-h1);
printf("Solution for (d),\n");
tons=30; //capacity of 30 tons is desired
printf("The pounds per minute of ammonia required for ciculation is %f lbm/min\n\n",(200*tons)/(h3-h1));
printf("Solution for (e),\n");
printf("The ideal horsepower per ton of refrigeration is %f hp/ton\n\n",4.717*((h4-h3)/(h3-h1)));


