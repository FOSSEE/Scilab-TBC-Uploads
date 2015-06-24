clc

c=18.74; // m/s
lambda=225; // m

disp("(a)Estimate the time elapsed since the waves were generated in a storm occurring 800 km out to sea. ")

x=800*10^3; // m
cg=c/2;

t=x/cg;

disp("time elapsed =")
disp(t/3600)
disp("hours")

disp("(b)Estimate the depth at which the waves begin to be significantly influenced by the sea bed as they approach the shore.")

h1=lambda/2;

h2=lambda/(2*%pi)*atanh(0.99);

printf("The answers show that h lies in the range between about %f m and %f m", h2,h1)