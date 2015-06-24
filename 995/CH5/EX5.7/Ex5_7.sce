//Ex:5.7
clc;
clear;
close;
hfe=200
I_c=10*10^-3;
dI_b=I_c/hfe;
dI_c=hfe*dI_b/100;
printf("Base current = %f A ",dI_b);
printf("\nChange in collector current = %f mA",dI_c);