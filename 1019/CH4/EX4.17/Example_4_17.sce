//Example 4.14
clear;
clc;

//Given
R=8.314;// gas constant in J K^-1 mol^-1
T=273;//temperature in K
V1=1;//initial volume in dm^3
V2=50;//final volume in dm^3
a=6.5;// Van der Waals constant in atm dm^6 mol^-2
b=0.056;//Van der Waals constant in dm^3 mol^-1

//to determine entropy change
qrev=R*T*log((V2-b)/(V1-b));
delS=qrev/T;//entropy change in J K^-1 mol^-1
mprintf('Change in entropy = %f J K^-1 mol^-1',delS);
//end