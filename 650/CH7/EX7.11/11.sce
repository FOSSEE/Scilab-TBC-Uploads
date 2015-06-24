clc
l=4; // m
b=2; // m
H1=0.15; // m
H2=0.05; // m

t=integrate('-l*b/1.5*H^(-5/2)', 'H', H1, H2);
disp("Time taken to reduce the head in the the tank =")
disp(t)
disp("s")