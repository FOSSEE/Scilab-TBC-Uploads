//Calculate the Gibbs Energy and Entropy of mixing of Argon and Nitrogen

//Example 7.1

clc;

clear;

n1=1.6;  //Number of moles of Argon at 1 atm

n2=2.6;  //Number of moles of Nitrogen at 1 atm

XAr=n1/(n1+n2);  //The mole fraction of Argon and Nitrogen

XN2=n2/(n1+n2); // The mole fraction of Nitrogen and Argon

n=n1+n2;  //Total moles of gas in mol

R=8.314;  //Gas constant in J K^-1 mol^-1

T=298;  //Temperature of the gas

delmixG=n*R*T*(XAr*log(XAr)+XN2*log(XN2))/1000;  //The Gibbs Energy of mixing in kJ

printf("Gibbs Energy of mixing = %.1f kJ",delmixG);

delmixS=-(delmixG*1000)/T;  //Entropy of mixing in J K^-1

printf("\nEntropy of mixing = %.0f J K^-1",delmixS);

