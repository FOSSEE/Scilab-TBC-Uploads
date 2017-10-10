//Example 8.6
clear;
clc;

//Given
T=673;//temperature in K
R=8.314;//gas constant in J K^-1 mol^-1
p=101325;//pressure in N m^-2
Kp=1.64*10^(-4);//Equillibrium constant for the synthesis of amonia at 673 K

//To determine the value of delGo
delGo=(-1)*R*T*log(Kp);//delGo in J mol^-1
mprintf('Change in free energy,delGo = %f J mol^-1',delGo);
//end