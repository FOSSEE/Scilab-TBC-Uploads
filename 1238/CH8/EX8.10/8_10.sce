//calculating required data//
//example 10//
clc
//clears the command window//;
clear
//clears//
S=10/10^3;//step size=weight of Ao in V//
printf('step size=%f volt\n',S);//displaying step size//
n=99;//no. of steps//
Vmax=S*n;//maximum full scale output//
printf('maximum full scale output=%f volt\n',Vmax);//displaying full scale output//
R=S/Vmax*100;//percentage resolution//
printf('percentage resolution=%f percent\n',R);//percentage resolution displayed//
Ao=10/10^3 
Bo=20/10^3 
Co=40/10^3 
Do=80/10^3
A1=100/10^3
B1=200/10^3
C1=400/10^3
D1=800/10^3
//weight in V of different inputs//
//input for D1,C1,B1,A1 is 1101 and for Do,Co,Bo,Ao is 1011//
V=D1+C1+A1+Do+Bo+Ao;//analog output voltage//
printf('analog output voltage=%f volt',V);//result displayed//
