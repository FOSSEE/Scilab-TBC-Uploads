
clc
clear
//Input data
Q=350//Discharge in m^3/s
h=30//Head in m
e=87//Turbine efficiency in percent
f=50//Frequency in Hz
p=24//Number of poles
Ns1=300//Specific speed
Ns2=820//Specific speed
d=1000//Dnsity of water in kg/m^3

//Calculations
N=(120*f)/p//Speed in rpm
P=d*Q*9.81*h*(e/100)*10^-3//Power in kW
P1=((Ns1*h^(5/4))/N)^2//Power in kW
n1=P/P1//No.of turbines
P2=((Ns2*h^(5/4))/N)^2//Power in kW
n2=ceil(P/P2)//No.of turbines

//Output
printf('Least number of machines required if using \n (a) Francis turbines are %3.0f \n (b) Kaplan turbines are %3.0f',n1,n2)
