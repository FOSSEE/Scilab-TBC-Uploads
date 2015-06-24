clc
clear
//Input data
P=120;//Power developed by a six cykinder four stroke diesel engine
N=2400;//Speed in rpm
f=0.2;//Brake specific fuel consumption in kg/kWh
s=0.85;//Specific gravity of fuel

//Calculations
F=f*P;//Fuel consumed per hour in kg
F1=F/6;//Fuel consumed per cylinder in kg/h
n=(N*60)/2;//Number of cycles per hour
F2=(F1/n)*10^3;//Fuel consumption per cycle in gm
V=F2/s;//Volume of fuel to be injected per cycle in cc

//Output
printf('The quantity kof fuel to be injected per cycle per cylinder is %3.4f cc',V)
