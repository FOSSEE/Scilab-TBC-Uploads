//Chapter 3
//Example 3_19
//Page 61

clear;clc;

pl=[10 5 8 7];
df=1.5;
lf=0.6;
sets=4;

//maximum demand
md=sum(pl)/df;
printf("(i)\t Max. demand on station = %.0f MW \n\n", md);

//units generated per annum
printf("(ii)\t Units generated/day = %.0f kWh \n\n", md*lf*8760*1000);

//installed capacity
printf("(iii)\t Installed capacity = %.1f MW \n\n", 1.2*md);
printf("\t\t Suitable unit sizes are %.1f MW \n\n", 1.2*md/sets);