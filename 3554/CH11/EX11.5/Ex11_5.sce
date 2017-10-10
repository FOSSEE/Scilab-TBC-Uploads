// Exa 11.5

clc;
clear all;

// Given data
// Refering circuit in Fig. 11.15(a) and graph in 11.15(b) on page no.317

R1=5; // k Ohms
R2=5; //k Ohms
R3= 5; // k Ohms
E=6; // Applied voltage(V)

// Solution

// The value of Rv when bridge is balanced is calculated as
Rv=R2*R3/R1;
printf(' The value of Rv = %d K Ohms \n' , Rv);
disp(" From the graph, the temperature at which bridge is balanced is = 80      degree celsius");
disp(" From the graph, the resistance Rv for balancing bridge at 60 degree celcius comes out to be 4.5 k Ohms ");
// Therefore
Rv1=4.5; // Resistance Rv at 60 degree celcius(K ohms)
es=E*(R3/(R1+R3) - Rv1/(R2+Rv1) ); // Error signal
printf(' The amplitude of error signal at 60 degree celsius is = %.3f V \n',es);
