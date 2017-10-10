//Example 5.5
clear;
clc;

//Given
n=1;//moles of gas
P1=10.1;//initial pressure in 10^5 N m^-2
P2=1.01;//final pressure in 10^5 N m^-2
R=8.314;//gas constant in J K^-1 mol^-1
T=300//temperature in K

//To determine delE,delH,delA;delG and delS
w=0;//since the gas expands against zero pressure
delG=n*R*T*log(P2/P1);//gibbs free energy in J
delE=0;//isothermal expansion of ideal gas
q=delE-w;//by 1st Law of thermodynamics
delH=0;//delH=delE+del(n*R*T) and both are 0
delA=n*R*T*log(P2/P1);//Helmoltz free energy in J
delS=R*log(P2/P1);//entropy change in J K^-1
delSsurr=0;//entropy of the surrounding
delSuniv=delS+delSsurr;//entropy of the universe in J K^-1
mprintf('(i) delE = %f J mol^-1 since it is isothermal expansion of an ideal gas',delE);
mprintf('\n (ii) q = %f J mol^-1',q);
mprintf('\n (iii) delH = %f J mol^-1',delH);
mprintf('\n (iv) delA = %f J mol^-1',delA);
mprintf('\n (v) delG = %f J mol^-1',delG);
mprintf('\n (vi) delS of system = %f J K^-1 mol^-1',delS);
mprintf('\n (vii) delS of universe = %f J K^-1 mol^-1',delSuniv);
//end