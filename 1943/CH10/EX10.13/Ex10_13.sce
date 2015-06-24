
clc
clear
//Input data
Q=175//Discharge in m^3/s
h=18//Head in meter
N=150//Speed in rpm
oe=82//Overall efficiency in percent
Ns1=460//Maximum specific speed
Ns2=350//Maximum specific speed
d=1000//Density in kg/m^3

//Calculations
P=(d*Q*9.81*h*(oe/100)*10^-3)//power in kW
P1=((Ns1*h^(5/4))/N)^2//Power in kW
n1=P/P1//No.of turbains
P2=((Ns2*h^(5/4))/N)^2//Power in kW
n2=ceil(P/P2)//No.of turbains

//Output
printf('The number of turbines in \n (a) Francis turbine are%3.0f \n (b) Kaplan turbine are %i',n1,n2)
