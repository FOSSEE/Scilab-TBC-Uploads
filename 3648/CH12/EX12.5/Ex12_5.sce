//Example 12_5
clc();
clear;
//To findout by how much the entropy of the system changes
m=20       //Units in gm
alpha=80    //Units in cal/gm
t=4.184               //Units in J/Cal
Q=m*alpha*t      //Units in J
T=273      //Units in K
S=Q/T        //Units in J/K
printf("The entropy is Delta S=%.1f J/K",S)
