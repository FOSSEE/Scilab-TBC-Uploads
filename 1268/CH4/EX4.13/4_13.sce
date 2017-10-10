clc;
disp("Example 4.13")
head= 5 // in m
f= 0.0045
l= 100 // pipe length in m
d= 0.05 // pipe diameter in m
//delP=f*density*u*2*u*l/d and delP should also be equal to density*9.8*head
// equating these 2 we get a relation for u
u=((head*9.81*d)/(f*2*l))^0.5
flowrate= %pi*d*d*u/4
disp("The flow rate is ")
disp(flowrate,"  m^3/s")
