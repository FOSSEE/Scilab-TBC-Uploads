//Calculate the values of change in Gibbs energy and Equilibrium constant  in biocchemical processes, Equilibrium constant for standard state .Also calculate the Gibbs energy change using both physical chemical standard state and biochemical standard state 

//Example 9.5

clc;

clear;

R=8.314; //Gas constant in J K^-1 mol^-1

T=298; //Temperature in K

delG1=-21.8;  //Change in Gibbs energy in standard state in kJ mol^-1

K=exp((-delG1*1000)/(R*T));  //Equilibrium constant for standard state

printf("Equilibrium constant for standard = %.1f*10^3",K*10^-3); 

delG2=delG1+39.93; //Change in Gibbs energy in biocchemical processes in kJ mol^-1

printf("\n Change in Gibbs energy in biocchemical processes =%.2f kJ mol^-1 ",delG2);

Kdes=exp(-(delG2*1000)/(R*T));  //Equilibrium constant  in biocchemical processes

printf("\n Equilibrium constant  in biocchemical processes = %.1f*10^-4",Kdes*10^4);

C1=4.6*10^-3; //Concentration of NAD+ ion in M

C2=1.5*10^-2; //Concentration of NADH  in M

C3=3.0*10^-5; //Concentration of H+ ion in M

PH2=0.010;  //Standard pressure of H2 gas in bar

DelG1=((delG1*1000)+(R*T)*(log((C1*PH2)/(C2*C3))))/1000; //Gibbs energy change for Physical Chemical standard state in kJ mol^-1

printf("\n Gibbs energy change for Physical Chemical standard state = %.1f kJ mol^-1 ",DelG1);

DelG2=((delG2*1000)+(R*T)*(log((C1*PH2)/(C2*C3/10^-7))))/1000; //Gibbs energy change for Biochemists's Standard state in kJ mol^-1

printf("\n Gibbs energy change for Biochemists Standard state = %.1f kJ mol^-1",DelG2);
