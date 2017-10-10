//Example 8.19
clear;
clc;

//Given
delGo2=-36.7;//standard free energy change in conversion of fumarate to asparate in kJ mol^-1
delGo3=-2.9;//standard free energy change in conversion of fumarate to malate in kJ mol^-1
T=310;//Temperature in K
R=8.314;//gas constant in J K^-1 mol^-1

//To determine the standard free energy change in conversion of malate to asparate and the equillibrium constant
delGo1=delGo2-delGo3;//the standard free energy change in conversion of malate to asparate in kJ mol^-1
k=(-1000*delGo1)/(R*T);//k=log(K)
K=exp(k);//K is the equillibrium constant
mprintf('Standard free energy change in conversion of malate to asparate = %f kJ mol^-1',delGo1);
mprintf('\n The equillibrium constant at 310 K = %f',K);
//end