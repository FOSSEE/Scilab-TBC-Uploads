//Initilization of variables
Wc=28 //lb
v=16 //ft/s
Ib=12 //ft-lb-s^2
u=0.4 //coefficient of friction
t=2 //s
g=32.2 //ft/s^2
//Calculations
T=Wc+(Wc/g)*8 //lb
alpha=8/(15/12) //rad/s^2
F=(Ib*alpha+T*1.25)/t //lb
N=F/u //lb
//Summing moments about D
P=(N*8+F*3)/40 //lb
//Summing forces horizontally and vertically
Dx=151-P //lb
Dy=-F //lb
//Result
clc
printf('The reactions at D are Dx=%f lb and Dy=%f lb',Dx,Dy)
