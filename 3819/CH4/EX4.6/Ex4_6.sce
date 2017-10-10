// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 4-Buoyancy and Floatation
// Problem 4.6

//Given Data Set in the Problem
dens=1000
g=9.81
sg=0.8
theta=135
d=15
P=9.81
OB=50
OD=35

//calculations
//Let h is the depth
h=OB*sin((180-theta)*%pi/180)-(OD)          //in cms
//volume of oil displaced
v_disp=2/3*%pi*(d/2)^3+h*%pi*(d/2)^2
F_buoy=sg*dens*g*v_disp*10^-6
//taking moment about the hinge
//P*20=(F_buoy-W_float)*(OB*cos 45)
function[f] = F(W)
    f = P*20-(F_buoy-W)*(OB*cos((180-theta)/180*%pi))
endfunction
W= 10;
W = fsolve(W,F)
//Weight of the float
mprintf("The weight of the float is %f N\n",W)

