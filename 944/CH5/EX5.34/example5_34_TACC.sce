//example 5.34

clear;
clc;

//Given:
x=0.28;//mole fraction of solute
R=8.314;//Universal gas constant[J/K/mol]
T=298;//temperature[K]

//To find the reduction in chemical potential
du=R*T*log(1-x);//reduction in chemical potential[J/mol]
printf("The reduction in chemical potential is %f J/mol",-du);





