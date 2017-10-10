//Example 8.6
clear;
clc;

//Given
T=298;//temperature in K
R=8.314;//gas constant in J K^-1 mol^-1
p=101325;//pressure in N m^-2
MoNH3=-16.6;//standard chemical potential of amonia at 298 K in kJ mol^-1
MoN2=0;//standard chemical potential of nitrogen at 298 K in kJ mol^-1
MoH2=0;//standard chemical potential of hydrogen at 298 K in kJ mol^-1

//To determine the value of equillibrium constant Kp
delGo=MoN2+(3*MoH2)-(2*MoNH3);//delGo in kJ
k=(-1000*delGo)/(R*T);//k=log(Kp)
Kp=exp(k);//equillibrium constant Kp
mprintf('Change in free energy,delGo=%f kJ',delGo);
mprintf('\n Equillibrium constant,Kp=%f',Kp);
//end