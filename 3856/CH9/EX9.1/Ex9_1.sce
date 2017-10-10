//Calculate the Equilibrium constant for the reaction   N2(g)+3H2(g)=2NH3(g)

//Example 9.1

clc;

clear;

delfG1=-16.6;  //Standard Gibbs Energy for NH3  in kJ mol^-1

delfG2=0;  //Standard Gibbs Energy for N2  in kJ mol^-1

delfG3=0;  //Standard Gibbs Energy for NH3  in kJ mol^-1

delrGo=2*delfG1-(delfG2+3*delfG3);  //Standard Gibbs Energy change for reaction  in kJ mol^-1

R=8.314;  //Gas constant in J K^-1 mol^-1

T=298;  //Temperature in K

Kp=exp(-delrGo*1000/(R*T));  //Equilibrium constant for the reaction (Equilibrium constant for the reaction is given by Kp=(PNH3/Pdeg)^2/((PN2/Pdeg)*(PH2/Pdeg)^2 )

printf("Equilibrium constant = %.1f*10^5",Kp*10^-5);
