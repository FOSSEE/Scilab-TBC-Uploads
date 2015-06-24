clc
//Initialization of variables
disp("For steady state, dV/dt =0")
Q=1600/449
A2=0.1963
g=32.2
rp2=2000
//calculations
V2=Q/A2
hp1=32*V2^2 /(2*g) -50
hp2=hp1*(rp2/1650)^2
hpf=169 //ft
Q=4.1 //cfs
//results
printf("Steady state flow rate = %.2f cfs",Q)
