clc
clear
//Page number 481
//Input data 
t1=27;//The given initial temperature in degree centigrade 
p=50;//The reduce in the pressure in atmospheres 
a=13.2*10^-2;//Van der Waals constant in Nm^4mole^-2
b=31.2*10^-6;//Van der Waals constant in mole^-1m^3 
R=8.3;//Universal gas constant in JK^-1(mole)^-1
Cp=3.5;//The specific heat at constant pressure 
M=32;//Molecular weight of oxygen 

//Calculations 
T=t1+273;//The given initial temperature in K 
P=p*0.76*13.6*1000*9.8;//The reduce in the pressure in N/m^2
T1=((P)/(4.2*M*Cp*R))*(((2*a)/(R*T))-b);//The drop in the temperature in K 

//Output 
printf('The drop in the temperature is %3.4f K ',T1)
