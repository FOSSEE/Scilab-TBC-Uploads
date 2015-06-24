
clc
clear

//INPUT DATA
L=1;//Length of the bar in m
l=0.25;//Length of the pemdulum in m

//CALCULATIONS
k=sqrt((L^2)/12);//Radius of gyration m
T=sqrt(((k^2/l)+l)/9.8)*2*3.14;//Time period of pendulum in s

//OUTPUT
mprintf('Time period of the pendulum is %3.3f sec',T)
