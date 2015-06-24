//example 1.6
clc; funcprot(0);
Gammad=14.5;
Gammasat=17.2;
Gammaw=9.81;
printf("Point \t Sigma(kN/m^2)\t u(kN/m^2)\t sigmadash=sigma-u (kN/m^2)\n");

printf("  A\t   %d\t \t    %d\t\t %d \n",0,0,0);
printf("  B\t%.2f\t \t%.2f\t\t %.2f \n",4*Gammad,0,4*Gammad-0);
printf("  C\t%.2f\t \t%.2f\t\t %.2f \n",4*Gammad+5*Gammasat,5*Gammaw,4*Gammad+5*Gammasat-5*Gammaw);

