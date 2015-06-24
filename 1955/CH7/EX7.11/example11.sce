clc
clear
//input data
P1=6600//Initial power developed by the turbine in kW
N1=100//Initial speed of the turbine in rpm
H1=30//Initial head of the turbine in m
H2=18//Final head of the turbine in m

//calculations
N2=N1*((H2/H1)^(1/2))//The final speed of the turbine in rpm
P2=P1*((H2/H1)^(3/2))//The final power developed by the turbine in kW

//output
printf('(1)The final speed of the turbine is %3.2f rpm\n(2)The final power developed by the turbine is %3i kW',N2,P2)
