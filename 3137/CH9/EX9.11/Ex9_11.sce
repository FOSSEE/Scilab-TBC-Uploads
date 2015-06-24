//Initilization of variables
F=180 //N
m=100 //kg
g=9.81 //m/s^2
mu=0.25 //coeffiecient of friction
//Calculations
//Assuming F2 is maximum
N2=F*2/(1+mu) //N
F2=mu*N2 //N
N1=m*g-F2 //N
F1=F-F2 //N
//Result
clc
printf('The vaules are N2=%fN,F2=%fN,N1=%fN and F1=%fN',N2,F2,N1,F1)
