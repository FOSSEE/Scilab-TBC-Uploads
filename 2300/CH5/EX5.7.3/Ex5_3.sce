
//scilab 5.4.1
//windows 7 operating system
//Chapter 5:Semiconductor Junction Diodes
clc
clear
V=0.9//V=forward bias voltage
I=60*10^(-3)//I=Current in ampere
rdc=(V/I)//rdc=static resistance in ohm
n=2//n=emission coefficient
rac=((26*n*10^(-3))/I)//rac=dynamic resistance
disp("ohm",rdc,"rdc=")
disp("ohm",rac,"rac=")
