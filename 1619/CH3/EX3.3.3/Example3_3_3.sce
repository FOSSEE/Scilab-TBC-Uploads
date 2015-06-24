//Exapmle 3.3.3 page 3.30

clc;
clear;

L= 0.04;
n= 1.78;
lamda= 0.55*10^-6;
c= 3*10^8;
q= 2*n*L/lamda;
q=q/10^5;
printf("Number of longitudinal modes is %.2fx10^5",q);
del_f= c/(2*n*L);
del_f=del_f*10^-9;
printf("\n\nThe frequency seperation is %.1f GHz",del_f);
