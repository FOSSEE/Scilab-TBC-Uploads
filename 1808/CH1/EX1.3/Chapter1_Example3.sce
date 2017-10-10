clc
clear
//INPUT DATA
pmb=15;//brake ean pressure in bar
L=200;//Stroke in cm
d=0.8;//bore daimeter in cm
N=100;//speed in rpm
nc=6;//number of cylinders
bsfc=0.4;//brake specific fuel consumption
cv=42000;//calorific value in kJ/kg

//CALCULATIONS
BP=(pmb*L*(3.14*0.8^2/4)*N*nc)/(60);//Brake power in kW
mf=bsfc*BP;//Total fuel consumption in kg/h
nbt=(BP/((mf/3600)*cv))*100;//Brake thermal efficiency in percentage

//OUTPUT
printf('(i)The Brake power is %3.2f kW \n (ii)Total fuel consumption is is %3.2f kg/hr \n (iii)Brake thermal efficiency is %3.2f percentage ',BP,mf,nbt)
