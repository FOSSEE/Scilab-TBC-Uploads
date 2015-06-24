clc
//Example 19.4
//Calculate the time required to blend two miscible, low viscosity liquids
D_tank=3//ft
D_impeller=D_tank/3//ft
H_tank=D_tank//ft
N=4//rps
t_blend=4.3*(D_tank/H_tank)*(D_tank/D_impeller)^2/N//s
printf("the time required to blend two miscible, low viscosity liquids is %f s",t_blend);