clc
clear
//Input data
W=30;//The net dynamometer load in kg
R=0.5;//Radius in m
N=2400;//Speed in rpm
FHP=6.5;//Engine power in hp

//Calculations
BHP=(2*3.14*R*N*W)/4500;//Brake horse power in kW
IHP=BHP+FHP;//Indicated horse power in kW
nm=(BHP/IHP)*100;//Mechanical efficiency in percentage

//Output
printf('Mechanical efficiency of the engine is %3.2f percent',nm)
