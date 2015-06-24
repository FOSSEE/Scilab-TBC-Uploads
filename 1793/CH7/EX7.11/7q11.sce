clc
//initialisation of variables
H1= 2 //m
H2= 3 //m
H3= 4 //m
k1= 1e-4 //cm/sec
k2= 3.2e-2 //cm/sec
k3= 4.1e-5 //cm/sec
//calculations
H= H1+H2+H3
Kh= (1/H)*((k1*H1)+(k2*H2)+(k3*H3))
Kv= H/((H1/k1)+(H2/k2)+(H3/k3))
P= Kh/Kv
//results
printf ('ration of equivalent hydraulic conductivity = % 2f ',P)
