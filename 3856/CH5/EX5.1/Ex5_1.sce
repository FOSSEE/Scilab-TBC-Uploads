//Calculate the Entropy change when Ideal gas are expand to Isothermaly ,Estimate the probability that the gas will contract spontaneously from the final volume to initial volume

//Example 5.1

clc;

clear;

n=2;  //Number of moles of gas in mol

R=8.314;  //Gas consant in J K^-1 mol^-1

V2=2.4;  //final volume of the gas in L

V1=1.5;  //initial volume of the gas in L

delS=n*R*log(V2/V1);  //Entropy change in J K^-1

printf("Entropy change = %.1f J K^-1",delS);

Kb=1.381*10^-23;  //Boltzman's constant in J K^-1

r=exp(-delS/Kb);  //probability for spontaneous contraction=W1/W2 (Probability for spontaneous contraction is zero  butit must be with the aid of external force)

printf("\nProbability for spontaneous contraction = %.0f",r);
