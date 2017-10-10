//Example 4.3 (b)
clear;
clc;

//Given
a=1.24;//alpha at 290K and 1 atm in 10^-3 K^-1
b=9.3;//beta at 290K and 1 atm in 10^-5 atm^-1
T=290;//temperature in K
delS=2.1;//entropy change in J K^-1 mol^-1

//to calculate the change in molar volume
delV=(delS*b)/(a*100*101.325);//change in molar volume in dm^3 mol^-1
mprintf('change in molar volume = %f dm^3 mol^-1',delV);
//end