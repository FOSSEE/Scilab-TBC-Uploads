clear;
clc;
printf("\n Example 15.3");
R = 322/142;
//The initial concentration 
c1 = 1000/5000;               //Concentration is in kg Na2SO4/kg water
printf("\n The initial concentration c1 = %.1f kg Na2SO4/kg water",c1);
//The solubility
c2 = 9/100;                   //solubility is in Kg Na2SO4/kg water
printf("\n The solubility c2 = %.2f Kg Na2SO4/kg water",c2);
printf("\n Initial mass of water,w1 = 5000 kg and the water lost by evaporation E = %f kg/kg",2/100);
printf("\n yield y = %d kg Na2SO4.10H2O",(5000*2.27)*[0.2-0.09*(1-0.02)]/[1-0.09*(2.27-1)]);

