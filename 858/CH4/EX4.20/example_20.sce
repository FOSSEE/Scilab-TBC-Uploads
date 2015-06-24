clc
clear 
printf("example 4.20 page number 156\n\n")

//to find the size of pipe required
d = 0.15   //in m
u = (0.0191/0.15^2);   //in m/s

q = (3.14/4)*d^2*u;
printf("volumetric flow rate = %f cubic meter/s",q)
