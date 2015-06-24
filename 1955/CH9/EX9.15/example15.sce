clc
clear
//input data
H=23//Net head across the turbine in m
N=150//Speed of the turbine in rpm
P=23//Power developed by the turbine in MW
D=4.75//Blade tip diameter in m
d=2//Blade hub diameter in m
nH=0.93//Hydraulic efficiency
n0=0.85//Overall efficiency
g=9.81//Acceleration due to gravity in m/s^2
dw=1000//Density of water in kg/m^3

//calculations
dm=(D+d)/2//Mean diameter of the turbine in m
Pa=(P*10^6)/n0//Power available in MW
Q=(Pa/(dw*g*H))//Flow rate in the turbine in m^3/s
Um=(3.1415*dm*N)/60//Rotor speed at mean diameter in m/s
Pr=Pa*nH*10^-6//Power given to runner in MW
Cx1=Pr*10^6/(dw*Q*Um)//Velocity of whirl at inlet in m/s    as Cx2=0 in m/s
Ca=Q/((3.1415/4)*(D^2-d^2))//Axial velocity in m/s
b11=180-(atand(Ca/(Um-Cx1)))//Inlet blade angle in degree
Wx2=Um//Outlet whirl velocity component in m/s
b22=atand(Ca/Wx2)//Outlet blade angle in degree

//output
printf('(a)The inlet blade angle at mean radius is %3.1f degree\n(b)The outlet blade angle at mean radius is %3.1f degree',b11,b22)
