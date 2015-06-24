clc
//to calculate current should be sent through the solenoid
l=.10 //length in m
N=50 //number of turns
H=5*10^3 //magnetising field in A/m
i=H*l/N 
disp("current is i="+string(i)+"A")
