clc
clear
//INPUT DATA
t=25;//dry bulb temperature in Degree c
ws=8.6/100;//Specific humidity in kg w.v./kg d.a
p=760;//pressure in mm of Hg
ps=23.74;//Saturation pressure in mm of Hg

//CALCULATIONS
pv=10.508/1.01383;//Partial pressure of water vapour in mm Hg
x=(pv/ps)*100;//realtive humidity in percentage

//OUTPUT
printf('(a)Partial pressure of dry air vapour is %3.3f mm Hg \n (b)Relative humidity is %3.2f percentage ',pv,x)
