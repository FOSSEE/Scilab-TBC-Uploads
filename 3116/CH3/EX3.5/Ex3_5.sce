

clc 
// Given
u1 = 1 // Unit cell parameter
v1 = 1 // Unit cell parameter
w1 = 1 // Unit cell parameter

printf(" Example 3.5\n")
u_1 = 1/3*(2*u1-v1)
v_1 = 1/3*(2*v1-u1)
t_1 = -(u_1+v_1)
w_1 = w1
k = 1/u_1
u = u_1*k
v = v_1*k
w = w_1*k
t = t_1*k
printf("\n Indices of direction are as [%d %d %d %d]\n",u,v,t,w)
// while in notation negative value is indicated by a bar over it
