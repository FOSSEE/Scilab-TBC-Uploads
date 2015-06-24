clc
clear
//input data
H1=25//The initial head on the turbine in m
N1=200//The initial speed of the turbine in rpm 
Q1=9//The initial discharge of the turbine in m^3/s
n0=0.9//Overall efficiency of the turbine 
H2=20//The final head on the turbine in m
d=1000//density of the water in kg/m^3
g=9.81//Acceleration due to gravity in m/s^2

//calculations
N2=N1*((H2/H1)^(1/2))//The final speed of the turbine in rpm
Q2=Q1*((H2/H1)^(1/2))//The final discharge of the  turbine in m^3/s
P1=n0*d*g*Q1*H1*10^-3//Power produced by the turbine initially in kW
P2=P1*((H2/H1)^(3/2))//Power produced by the turbine finally in kW

//output
printf('(a)The final speed of the turbine is %3.2f rpm\n(b)The final discharge of the  turbine is %3.2f m^3/s\n(c)Power produced by the turbine initially is %3.3f kW\n(d)Power produced by the turbine finally is %3.2f kW',N2,Q2,P1,P2)
