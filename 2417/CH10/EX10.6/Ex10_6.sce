//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 10.6\n\n\n");
// Chapter 10 : Refrigeration
// Problem 10.6  (page no. 509) 
// Solution
 
//From Appendix 3,at 120psia,the corresponding saturation temperature is 66 F, enthalpies are
h1=116.0; //Unit:Btu/lbm //enthalpy
h2=116.0; //Unit:Btu/lbm //Throttling gives h1=h2 //enthalpy
h3=602.4; //Unit:Btu/lbm //enthalpy
//From the consideration that s3=s4,h4 is found at 15 psia,
s3=1.3938; //s=entropy //Unit:Btu/(lbm*F)
//Therefore by interpolation in the superheat tables at 120 psia,
t4=237.4; //Unit:fahrenheit //temperature
h4=733.4; //Unit:Btu/lbm //enthalpy
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


