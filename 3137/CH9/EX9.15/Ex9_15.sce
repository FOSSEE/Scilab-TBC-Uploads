//Initilization of variables
d_m=2 //in   mean diameter of the screw
p=1/4 //in
mu=0.15 //coefficient of friction
l=2 //ft
L=4000 //lb
//Calculations
phi=atand(mu) //degrees
beta=atand(p/(%pi*l)) //degrees
//Force to raise the load
P=(L*tand(phi+beta))/(d_m*12) //lb
//Force to lower the load
P2=(L*tand(phi-beta))/(d_m*12) //lb
//Result
clc
printf('The force to raise the load is %flb and to lower is %flb',P,P2 )
