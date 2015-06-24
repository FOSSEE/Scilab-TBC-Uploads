clc
clear
//Initialization of variables
d=2.067 //in
P=20 //psia
R=53.35 
T=600 //R
mu=0.0486 //lb /ft.hr
v=50 //ft/s
//calculations
rho=P*144/(R*T)
Re=d*v*rho*3600/(12*mu)
//results
printf("Reynolds number = %d ",Re)
disp('The answers are a bit different due to rounding off error in textbook')
