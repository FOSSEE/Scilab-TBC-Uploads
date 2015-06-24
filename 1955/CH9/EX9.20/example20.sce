clc
clear
//input data
P=11500//Rated power of the turbine in kW
H=4.3//Average head of the turbine in m
n0=0.91//Overall efficiency of the turbine 
DbD=0.3//Ratio of Diameters of runner boss and runner
SR=2//Speed ratio
FR=0.65//Flow ratio
g=9.81//Acceleration due to gravity in m/s^2
dw=1000//Density of water in kg/m^3

//calculations
U=SR*(2*g*H)^(1/2)//Runner tip speed in m/s
Cr=FR*(2*g*H)^(1/2)//Flow velocity in m/s
Q=(P*10^3)/(n0*dw*g*H)//Discharge of the turbine in m^3/s
D=((4*Q)/(Cr*3.1415*(1^2-DbD^2)))^(1/2)//Runner diameter in 
N=(60*U)/(3.1415*D)//Speed of the turbine in rpm 

//output
printf('(a)Runner diameter of the turbine is %3.2f m\n(b)Operating speed of the turbine is %3.1f rpm',D,N)
