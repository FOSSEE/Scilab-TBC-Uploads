//Example 8.5
clear;
clc;

//Given
delHfoC=0;//enthalpy of formation of graphite in kJ mol^-1
delHfoH2=0;//enthalpy of formation of Hydrogen molecule in kJ mol^-1
delHfoCH4=-74.83;//enthalpy of formation of methane in kJ mol^-1
delSoC=5.68//standard entropy of graphite in J K^-1 mol^-1
delSoH2=130.59//standard entropy of Hydrogen in J K^-1 mol^-1
delSoCH4=186.19//standard entropy of methane in J K^-1 mol^-1
T=298;//temperature in K
R=8.314;//gas constant in J K^-1 mol^-1

//To determine the change in free energy delGo and Kp,the equillibrium constant
delHo=1000*(delHfoCH4-(delHfoC+(2*delHfoH2)));//Net change in enthalpy in J mol^-1
delSo=delSoCH4-(delSoC+(2*delSoH2));//Net change in entropy in J K^-1 mol^-1
delGo=delHo-(T*delSo);//delGo in J mol^-1
k=-1*delGo/(R*T);//k=log(Kp)
Kp=exp(k);//equillibrium constant Kp
mprintf('Change in free energy,delGo=%f J mol^-1',delGo);
mprintf('\n Equillibrium constant,Kp=%f',Kp);
//end