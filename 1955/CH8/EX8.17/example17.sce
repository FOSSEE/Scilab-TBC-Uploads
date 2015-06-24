clc
clear
//input data
H=156//Total head operated by the pumps in m
N=1000//Running speed of the pump in rpm
Ns=20//Specific speed of each pump 
Q=0.150//Discharge of the pump in m^3/s

//calculations
Hm=((N*(Q)^(1/2))/(Ns))^(4/3)//Head developed by each pump in m
n=H/Hm//Number of pumps

//output
printf('The number of pumps are %3.f',n)
