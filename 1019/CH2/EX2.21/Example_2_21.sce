//Example 2.21
clear;
clc;

//Given
T1=300; //initial temperature in K
T2=600; //final temperature in K
R=8.314;// gas constant in J K^-1 mol^-1
Cv=25; //specific heat capacity at constant volume of the gas in J K^-1 mol^-1
n=1;//moles of the gas
P1=100; //initial gas pressure in kN m^-2
P2=1000; //final gas pressure in kN m^-2

// To determine net work done and efficiency
w1=R*T1*log(P2/P1);//work done in 1st step in J
w2=Cv*(T2-T1);//work done in 2nd step in J
w3=R*T2*log(P1/P2);//work done in 3rd step in J
q2=(-1)*w3;//heat taken up in J
w4=Cv*(T1-T2);//work done in final step in J
W=-(w1+w2+w3+w4);//total work done step in J
N=W/q2;//efficiency
mprintf('Net work done = %f',W);
mprintf('\n Heat absorbed = %f',q2);
mprintf('\n efficiency = %f',N);
//end