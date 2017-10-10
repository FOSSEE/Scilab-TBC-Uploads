clc
clear
//INPUT DATA
BP=200;//Brake power in kW
Vs=10*10^-3;//swept volue
n=2;//for four cylinders
nc=1;//number of cylinders
N=2100;//speed in rpm
L=0.136;//stroke in m
d=0.125;//bore in m

//CALCULATIONS
Sp=2*L*N/60;//Mean piston speed in m/s
bmep=(BP*n*60)/(Vs*N);//Brake mean effective pressure in kPa
P=BP/(3.14*d^2*6/4);//Specific power in kN/m^2

//OUTPUT
printf('Mean piston speed is %3.2f m/s \n Specific power is %3.1f kN/m^2',Sp,P)
