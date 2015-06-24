clc
//initialisation of variables
B= 6 //m
L= 120 //m
s= 3 //m
T= 6 //m
x= 2.4 //m
H= 5 //m
k= 0.008 //cm/sec
//calculations
b=B/2
a1= b/T
a2= s/T
a3= x/b
Q= 0.378*k*H*L*36*24
//results
printf ('seepage under the dam = % 2f m^3/day ',Q)
