

clc
//initialisation of variables
t1=10//c
hf=30//ft
t=0.004/12//in
g=32.2//ft/sec^2
l=1
D=4/12
//CALCULATIONS
i=hf/l
v=0.00001929/(1+(0.03368*t1)+(0.000221*t1*t1))
mv=g*i*t*t/(12*v)
rate=mv*%pi*D*t
//RESULTS
printf (' Rate of flow= %.6f ft^3/sec ',rate)
