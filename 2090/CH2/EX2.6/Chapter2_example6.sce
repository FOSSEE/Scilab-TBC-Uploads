clc
clear
//Input data
m=30;//The air fuel ratio by mass
T1=300;//The temperature of air at the beginning of the compression in K
r=16;//The compression ratio
CV=42000;//The calorific value of the fuel in kJ/kg
g=1.4;//Isentropic index
Cp=1.005;//Specific heat at constant prassure in kJ/kgK

//Calculations
T2=T1*(r^(g-1));//Temperature at point 2 in K
T3=[(1/m)*(CV/Cp)]+T2;//Temperature at point 3 in K
C=T3/T2;//The cut off ratio
n=(1-[(1/r^(g-1))*[((C^g)-1)/(g*(C-1))]])*100;//The ideal efficiency of the engine based on the air standard cycle

//Output
printf(' The ideal efficiency of the engine based on the air standard cycle = %3.1f percent ',n)
