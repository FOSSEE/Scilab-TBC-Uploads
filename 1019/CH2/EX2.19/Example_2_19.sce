//Example 2.19
clear;
clc;

//Given
T1=273; //initial temperature in K
T2=1073; //final temperature in K
w=1;//weight of aluminium taken in kg
mp=931;//melting point of aluminium in K
delHm=362.3;//enthalpy change during melting process in kJ kg^-1

// To determine delH
delH1=(0.9121*(mp-T1))+(2.0083*0.00005*((mp+T1)*(mp-T1)))-(2.0083*0.0001*273*(mp-T1));//enthalpy change in 1st step in kJ
delHf=delHm*w;//enthalpy change during melting in kJ
delH3=1.0836*(T2-mp);//enthalpy change in last step in kJ
delH=delH1+delHf+delH3;
mprintf('delH = %f kJ ',delH);
//end