clc
H=0.07; // average head 
rate=-0.02/600; // (dH/dt)
H1=0.08; // m
H2=0.01; // m

k=-rate/H^(3/2);

t=integrate('-1/k*H^(-3/2)', 'H', H1, H2);
disp("Time taken =")
disp(t)
disp("s")