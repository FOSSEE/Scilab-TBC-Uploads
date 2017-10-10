//Example 2.22
clear;
clc;

//Given
T1=373; //initial temperature in K
R=8.314;// gas constant in J K^-1 mol^-1
Cv=2.5*R; //specific heat capacity at constant volume of the gas in J K^-1 mol^-1
n=1;//moles of the gas
V=1.4;// coefficient of adiabatic expansion (gamma)

// To determine net work done and efficiency
w1=(-1)*R*T1*log(2);//work done in 1st step in J
q=-w1;//heat absorbed in J
T2=T1*((2/3)^(V-1));//final temperature in K
w2=Cv*(T2-T1);//work done in 2nd step in J
w3=(-1)*R*T2*log(1/2);//work done in 3rd step in J
w4=Cv*(T1-T2);//work done in final step in J
W=w1+w2+w3+w4;//total work done in J
N=-100*W/q;//efficiency in percent
mprintf('Net work done = %f',W);
mprintf('\n delE = 0 since it is a cyclic process');
mprintf('\n efficiency = %f percent',N);
//end