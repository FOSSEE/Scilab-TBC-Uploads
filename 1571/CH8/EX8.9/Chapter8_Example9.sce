clc
clear

//INPUT
t1=400;//inital temperature in K
dv=2;//ratio of volumes final and inital
r=8.31*10^7;//universal gas constant in ergs/kg.K

//CALCULATIONS
w=r*t1*log(2);//work done in expanding isothermally in ergs

//OUTPUT
mprintf('the work done in expanding isothermally is %3.2f ergs',w)
