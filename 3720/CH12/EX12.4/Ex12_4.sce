//Example 12_4
clc;clear;funcprot(0);
// Given values
T_0=473;// T_0=T_1 in K
P_0=1400;// P_0=P_1 in kPa
// Properties
k=1.289;//The specific heat ratio of carbon dioxide

//Calculation
//T_1=T_c/T_0
T_1=2/(k+1);
T_c=T_1*T_0;//The critical temperature in K
printf('The critical temperature T*=%0.0f  K\n',T_c);
//P_1=P_c/P_0
P_1=(2/(k+1))^(k/(k-1));
P_c=P_1*P_0;//The critical pressure in KPa
printf('The critical pressure P*=%0.0f KPa\n',P_c);
