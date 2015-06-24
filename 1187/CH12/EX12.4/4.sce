clc

disp("(b) Estimate the height of tank required")

f=0.006;
l=1400; // m
g=9.81; // m/s^2
d1=0.75; // m
d2=3; // m
Q=1.2; // m^3/s
a=20; // m

K=4*f*l/(2*g*d1);

// 2*K*Y = l*a/(g*A) = 8.919 s^2

// Y=2*K*Y/2*K

Y=8.919/(2*K);
// When t=0

u0=Q/(%pi/4*d1^2);

y0=K*u0^2;

C=-Y/K/exp(y0/Y);

// To determine the height of the surge tank, we consider the condition y = y_max when u = 0. 

// 0 = 1/K*(y_max+Y) + C*exp(y_max/Y)

// From the above eqn we get

y_max=-Y;

H=a-y_max;
disp("The minimum height of the surge tank =")
disp(H)
disp("m")

disp("The actual design height should exceed the minimum required, say 23 m")