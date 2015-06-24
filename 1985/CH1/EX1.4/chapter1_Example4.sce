
clc
clear

//INPUT DATA
L=1;//Length of pendulum in m
B=0.05;//Width of pendulum in m

//CALCULATIONS
k=sqrt((L^2+B^2)/12);//Radius of gyration in m
D=((L/2)-k)*100;//distance of point of minimum time period from one end in cm

//OUTPUT
mprintf('The minimum time period is obtained at %3.2f cm',D)
