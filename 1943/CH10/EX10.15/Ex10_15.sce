
clc
clear
//Input data
x=1/5//Scale model
h=1.5//Head in m
P=5//Power in kW
N=450//Speed in rpm
h1=30//Head in m

//Calculations
N1=(x*N)/sqrt(h/h1)//Speed in rpm
Ns=(N*sqrt(P))/h^(5/4)//Specific speed
P1=((Ns*h1^(5/4))/N1)^2//Power in kW

//Output
printf('Speed is %3.0f rpm \n Power is %3.0f kW',N1,P1)
