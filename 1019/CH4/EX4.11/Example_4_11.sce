//Example 4.11
clear;
clc;

//Given
R=8.314;// gas constant in J K^-1 mol^-1
T=300; //initial temperature in K
r=3;//ratio of final volume to initial volume

//To calculate the entropy
q=R*T*log(r);//r=V2/V1
n=(P*V1*0.001)/(R*T);//moles
delSsys=q/T;//entropy of system in J K^-1 mol^-1
delSuniv=R*log(r);//entropy of universe in J K^-1
mprintf('(a) Entropy of the system = %f J K^-1 mol^-1',delSsys);
mprintf('\n Entropy of the surrounding = 0 J K^-1 mol^-1');
mprintf('\n \n (b) Entropy of the system = 0 J K^-1 mol^-1');
mprintf('\n Entropy of the surrounding = %f J K^-1 mol^-1',delSuniv);
//end