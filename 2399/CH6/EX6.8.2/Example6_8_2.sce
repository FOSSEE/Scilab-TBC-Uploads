// Example 6.8.2 
clc;
clear;
n1=3.5;  //refractive index
n=1;    //refractive index of air
F=0.69; //transmission factor
eta = 100*(n1*(n1+1)^2)^-1;     //computing eta
printf("\neta external is %.1f percent i.e. small fraction of intrnally generated opticalpower is emitted from the device.",eta);
printf("\n\n OR we can also arrive at solution,\n");
r= 100*F*n^2/(4*n1^2);      //computing ratio of Popt/Pint
printf("\n Popt/Pint is %.1f percent",r);
printf("\nNOTE - printing mistake at final answer.\nThey have printed 40 percent it should be 1.4 percent");
