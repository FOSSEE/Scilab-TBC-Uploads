clc
clear
//INPUT DATA
N=4000;//Speed in rpm
T=150;//Torque developed in Nm
n=2;//For Four stroke engine
L=0.1;//Stroke in m
D=0.07;//Diameter in m
nc=6;//number of cylinders
mf=20;//fuel consumption in kg/h
cv=44000;//calorific value in kJ/kg

//CALCULATIONS
BP=(2*3.14*N*T/(60*1000));//Brake power in kW
bmep=((BP*n)/(L*(3.14*0.07^2/4)*(N/60)*nc));//Bmep in kN/m^2
nbt=(BP/((mf/3600)*cv))*100;//Brake thermal efficiency in percentage

//OUTPUT
printf('(i)The Brake power is %3.2f kW \n (ii)bmep is %3.2f kN/m^2 \n (iii)Brake thermal efficiency is %3.1f percentage ',BP,bmep,nbt)
