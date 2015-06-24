//determine the velocity of propogation of microwave
//given
clc
ur=1//permeability in H/m
epsilonr=4//permittivity in F/m
k=3d+8//the speed of light in vaccum 
v=k/((ur*epsilonr)^1/2)//velocity of microwave
disp(v,'the  velocity of propogation of microwave in m/s:')//velocity in m/s
