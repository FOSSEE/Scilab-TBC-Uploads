
//Solved Example Ex2.11 page no 54
clear
clc
Rs=200//Ω
R1=200//Ω
Rl=50//kΩ
vs=400 //sin wt V
vth=(R1/(R1+Rs))*vs
printf("\n vth =%d sin wt V",vth)
Rth=((R1*Rs)/(R1+Rs))
printf("\n Rth =%d ohm",Rth)
id=-2*10^(-6)
Rl=Rl*(10^3)
vD=vth-(id)*(Rth+Rl)
printf("\n vD =%0.1f V",vD)
