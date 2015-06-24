

//exapple 1.21.1
clc; funcprot(0);
// Initialization of Variable
LMT=9+40/60+12/3600;
longP=-42-36/60;
dot=longP/15;
GMT=LMT-dot;
disp("greenwich mean time in past midnight:");
a=modulo(GMT*3600,60);
printf("seconds %.2f",a);
b=modulo(GMT*3600-a,3600)/60;
printf("  minutes %i",b);
c=(GMT*3600-b*60-a)/3600;
printf("  hours %i",c);
