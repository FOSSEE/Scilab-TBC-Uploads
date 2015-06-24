clc
clear
//Initialization of variables
t1=80+460 //R
ps=0.5069 //psia
disp("from steam tables,")
vs=633.1 //ft^3/lbm
phi=0.3
R=85.6
Ra=53.3
p=14.696
//calculations
tdew=46 //F
pw=phi*ps
rhos=1/vs
rhow=phi*rhos
rhow2= pw*144/(R*t1)
pa=p-pw
rhoa= pa*144/(Ra*t1)
w=rhow/rhoa
mu=phi*(p-ps)/(p-pw)
Ws=0.622*(ps/(p-ps))
mu2=w/Ws
//results
disp("part a")
printf("partial pressure of water = %.5f psia",pw)
printf("\n dew temperature = %d F",tdew)
disp("part b")
printf("density of water = %.6f lbm/ft^3",rhow)
printf("\n in case 2, density of water = %.6f lbm/ft^3",rhow2)
printf("\n density of air = %.6f lbm/ft^3",rhoa)
disp("part c")
printf("specific humidity  = %.4f lbm steam/lbm air",w)
disp("part d")
printf("In method 1, Degree of saturation = %.3f",mu)
printf("\n In method 2, Degree of saturation = %.3f",mu2)
