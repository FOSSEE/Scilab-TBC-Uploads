//Example 8.9
clear;
clc;

//Given
T1=298;//initial temperature in K
T2=1073;//final temperature in K
R=8.314;//gas constant in J K^-1 mol^-1
delGfoH2=0;//standard free energy change in the formation of hydrogen in kJ mol^-1
delGfoC0=-137.27;//standard free energy change in the formation of CO in kJ mol^-1
delGfoH2O=-228.59;//standard free energy change in the formation of water in kJ mol^-1
delGfoC02=-394.38;//standard free energy change in the formation of CO2 in kJ mol^-1
delHfoH2=0;//standard enthalpy in the formation of hydrogen in kJ mol^-1
delHfoC0=-110.52;//standard enthalpy in the formation of CO in kJ mol^-1
delHfoH2O=-241.83;//standard enthalpy in the formation of water in kJ mol^-1
delHfoC02=-392.51;//standard enthalpy in the formation of CO2 in kJ mol^-1

//To determine the value of Kp at T1 and T2
delGo=delGfoH2+delGfoC02-(delGfoC0+delGfoH2O);//free energy change in kJ mol^-1
delHo=delHfoH2+delHfoC02-(delHfoC0+delHfoH2O);//standard enthalpy change in kJ mol^-1
k1=(-1000*delGo)/(R*T1);//k=log(Kp)
Kp1=exp(k1);//equillibrium constant Kp at 298 K
mprintf('Equillibrium constant,Kp at 298 K = %f ',Kp1);
k2=((-1000*delHo/R)*((1/1073)-(1/298)))+k1;//equillibrium constant at 1073 K
Kp2=exp(k2);//equillibrium constant Kp at 1073 K
mprintf('\n Equillibrium constant,Kp at 1073 K = %f ',Kp2);
//end