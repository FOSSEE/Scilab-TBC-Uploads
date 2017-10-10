//Example 5.3
clear;
clc;

//Given
n=2;//number of electrons transferred
E=1.01463;//cell potential in V
F=96500;//Farady charge in C
T=298;//temperature in K
p=-5*(10^(-5));//p=(delE/delT)p in V K^-1

//To determine the free energy change delG
delG=-n*F*E;//the free energy change in J
mprintf('delG for Westron Cell = %f J',delG);
delS=n*F*(p);//entropy change in J mol^-1
mprintf('\n delS for Westron Cell = %f J K^-1',delS);
delH=delG+(T*delS);//enthalpy change in J
mprintf('\n delH for Westron Cell = %f J',delH);
//end