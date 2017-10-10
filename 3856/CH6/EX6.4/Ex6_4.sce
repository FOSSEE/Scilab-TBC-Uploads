//Calculate the Change in Gibbs Energy 

//Example 6.4

clc;

clear;

P1=1.50;  //Initial pressure in bar

P2=6.90;  //Final pressure in bar

n=0.590;  //Number of mole of sample in mol

T=300;  //Temperature of the gas in K

R=8.314;  //Gas constant in J K^-1 mol^-1

delG=(n*R*T)*log(P2/P1);  //Gibbs energy in J

printf("Change in Gibbs Energy = %.2f *10^3 J",delG*10^-3);
