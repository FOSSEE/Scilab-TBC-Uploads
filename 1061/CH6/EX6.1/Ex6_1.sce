//Ex:6.1
clc;
clear;
close;
r=125*10^-6;// cladding radius in meter
R=8*10^-2;// curve of radius in meter
s=((R+2*r)/(R+r))-1;
s_p=s*100;// percentage of strain
printf("The percentage of strain =%f %%", s_p);
printf("\n If this condition is maintained the fiber will maintain without any break");