clc
clear

//INPUT
p1=76;//inital pressure in cm
t1=290;//inital temperature in K
y=1.4;//coefficent of expansion
dv=2;//ratio of inital to fianl volume when air expands isothermally 
dv1=2;//ratio of inital to final volume when air expands adiabatically

//CALCULATIONS
p2=p1/dv;//final pressure when air expands isothermally in cm of hg
t2=t1;//final temperature when air expands isothermally in K
t3=t2*(1/dv1)^(y-1);//temprature when air expands adiabatically in K
p3=p2*(1/dv1)^(y);//final pressure when air expands adiabatically in mm of hg

//OUTPUT
mprintf('final pressure when air expands isothermally in cm of hg %3.2f mm of hg \n final temperature when air expands isothermally is %3.2f K \n temprature when air expands adiabatically is %3.2f K \n final pressure when air expands adiabatically is %3.2f mm of hg',p2,t2,t3,p3)
