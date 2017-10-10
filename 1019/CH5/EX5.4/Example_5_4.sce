//Example 5.4
clear;
clc;

//Given
n=1;//moles of gas
V1=2;//initial volume in dm^3
V2=20;//final volume in dm^3
R=8.314;//gas constant in J K^-1 mol^-1
T=300//temperature in K

//To determine q,w,delE,delA,delG and delS
w=-R*T*log(V2/V1);//work done in J
delE=0;//isothermal expansion of ideal gas
q=delE-w;//by 1st Law of thermodynamics
delH=0;//delH=delE+del(n*R*T) and both are 0
delA=-n*R*T*log(V2/V1);//helmoltz free energy in J
delG=n*R*T*log(V1/V2);//Gibbs free energy in J
delS=q/T;//entropy change in J K^-1
mprintf('(i) w = %f J mol^-1',w);
mprintf('\n (ii) delE = %f J since it is isothermal expansion of an ideal gas',delE);
mprintf('\n (iii) q = %f J mol^-1',q);
mprintf('\n (iv) delH = %f J mol^-1',delH);
mprintf('\n (v) delA = %f J mol^-1',delA);
mprintf('\n (vi) delG = %f J mol^-1',delG);
mprintf('\n (vii) delS = %f J K^-1 mol^-1',delS);
//end