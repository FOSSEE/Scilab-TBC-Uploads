clc
Cd=0.62;
d=0.05;
a_o=%pi*d^2/4;
g=9.81; // m/s^2

k=Cd*a_o*sqrt(2*g);

// We have got two simultaneous equations

// Q-k*0.65^(1/2)=0.1/90*A
// Q-k*1.225^(1/2)=0.05/120*A

M=[1 -0.1/90;1 -0.05/120];
N=[k*0.65^(1/2);k*1.225^(1/2)];

X=inv(M)*N;

Q=X(1,1);
A=X(2,1);

disp("The Area of the tank =")
disp(A)
disp("m^2")

disp("Flowrate =")
disp(Q)
disp("m^3/s")