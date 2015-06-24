clc;
alpha_a=2800;
lambda=10^3*50;
x=10;
alpha_b=11;
U=1/[1/alpha_a+x/lambda+1/alpha_b];

tA=90;
tB=15;
q=(tA-tB)*U;
disp("rate of heat lost per sq m of surface")
disp("kW",q)

//part b
t2=q/alpha_b+tB;
disp("temperature of outsede surface:");
disp("C",t2)
