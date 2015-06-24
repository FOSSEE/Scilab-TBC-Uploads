clear;
clc;
printf("\n Example 15.1");
printf("\n For concentrations in kg sucrose/kg water:");
c = 2.45;                //concentration is in kg/kg
printf("\n c = %.2f kg/kg",c);
c1= 2.04;                //concentration is in kg/kg
printf("\n c1 = %.2f kg/kg",c1);
S = c/c1;
printf("\n S = %.2f",S);

printf("\n\n For concentrations in kg sucrose/kg water:")
co = c/(c+1);            //concentration is in kg/kg solution
printf("\n co = %.3f kg/kg solution",co);
co1 = c1/(c1 + 1);       //concentration is in kg/kg solution
printf("\n co1 = %.3f kg/kg solution",co1);
S = co/co1;
printf("\n S = %.2f ",S);











