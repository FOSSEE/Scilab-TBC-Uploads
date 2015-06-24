clc
clear 
printf("example 2.15 page number 75\n\n")

//to find u_in, M_v, k'

u_in = 0.575   //from the graph
u_s = 0.295   //in mPa-s

M_v = (u_in/(5.80*10^-5))^(1/0.72);
u_red = 0.628;   //in dl/g

c = 0.40   //in g/dl
k = (u_red-u_in)/((u_in^2)*c);

printf("k = %f \nMv = %f\nu_in = %f dl/gm",k,M_v,u_in)
