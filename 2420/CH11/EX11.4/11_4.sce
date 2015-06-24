clc
clear
//Initialization of variables
m4=8*1000000 //lb per hr
dt=12 //F
//calculations
disp("from mollier charts,")
dh4=950 //Btu/lb
m3=m4*(dh4)/dt
//results
printf("\n mass of cooling water = %.3e lb per hr",m3)
