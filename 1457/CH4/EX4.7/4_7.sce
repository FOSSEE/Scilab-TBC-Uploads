clc
//Initialization of variables
d=3 //in
x1=0.5^2
x2=0.75^2
z=80 //ft
z3=10 //ft
//calculations
disp("Using bernoullis theorem")
v3=29.7 //fps
Q=%pi /4 *(d/12)^2 *v3
hls=5*(x1*v3)^2 /(2*32.2)
hld=12*(x2*v3)^2 /(2*32.2)
//results
printf("Head loss in suction pipe = %.1f ft",hls)
printf("\n Head loss in discharge pipe = %.1f ft",hld)
printf("\n Flow rate = %.2f cfs",Q)
