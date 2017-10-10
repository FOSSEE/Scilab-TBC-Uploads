//Calculate the Equilibrium constant for the reaction 2H2(g)+O2(g)=2H2O(l)

//Example 9.3

clc;

clear;

delG1=-237.2; //Standard Gibbs enaergy for H2O in kJ mol^-1

delG2=0; //Standard Gibbs enaergy for H2 in kJ mol^-1

delG3=0;  //Standard Gibbs enaergy for O2 in kJ mol^-1

delG=2*delG1-2*delG2-delG3; //Standard Gibbs enaergy change for the reaction in kJ mol^-1

R=8.314;  //Gas constant in J K^-1 mol^-1

T=298;   //Temperature in K

Kp=exp(-(delG*1000)/(R*T));  //Equilibrium constant 

printf("Equilibrium constant = %.1f*10^83",Kp*10^-83); 

