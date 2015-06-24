clc
clear
//Initialization of variables
de=4 //in
T=1000 //lb
g=32.2 //ft/s^2
vele=8.5 //lb/s
pe=16.5 //psia
pa=14.7 //psia
//calculations
Ae=%pi/4 *de^2
Ve= (T-(pe-pa)*Ae)*g/vele
//results
printf("Exit velocity = %d ft/s",Ve)
