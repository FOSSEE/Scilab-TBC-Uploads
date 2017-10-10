printf("\t example 19.2 \n");
QF=50000000;
G=22.36;
Acpt=1500;
printf("\t approxiate values are mentioned in the book \n");
Q=(QF/(1+(G/4200)*(QF/Acpt)^(1/2))); // eq 19.15
printf("\t Q is : %.2e Btu/hr \n",Q);
printf("\t The radiant-section average rate will be 8350 Btu/(hr) (ft2), and the exit-flue-gas temperature 1540°F by heat balance. \n");
// end
