//Final temperature Calculation

clear;
clc;

printf("\tExample 19.2\n");

m=10;               //mass in lbm
dQ= 65;             //Heat supplied in Btu
To=77;              //Initial temp in F

Cp=375*2.39*10^-4;  //in Btu/lbm - F

dT=dQ/(m*Cp);

Tf=To+dT;

printf("\nFinal temp is %.1f F\n",Tf);

//End