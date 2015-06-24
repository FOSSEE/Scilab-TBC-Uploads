//example 5.30

clear;
clc;

//Given:
c=1;//no. of components(only CO2)
p=2;//no. of phases(liquid + gas)

//To find the degrees of freedom 
F=c-p+2;//degree of freedom
printf("Degrees of freedom is %f \n\n",F);
disp("Degrees of freedom 1 means that either pressure or temperature can be varied independently,i.e.when temperature is fixed,pressure is automatically fixed");