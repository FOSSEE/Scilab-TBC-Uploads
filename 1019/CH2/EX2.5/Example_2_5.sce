//Example 2.5
clear;
clc;

//Given
n=2;//moles of glucose dissolved
v=1;//volume of glucose solution in dm^3
R=8.314;// gas constant in J K^-1 mol^-1
T=298;// temperature in K
c2=0.2;//concentration to which the solution was diluted in mol dm^-3

// To determine work done
c1=n/v;;// initial concentration of glucose solution in mol dm^-3
w=n*R*T*log(c1/c2);// w in joule
mprintf('Work done (w) = %f J',w);
//end