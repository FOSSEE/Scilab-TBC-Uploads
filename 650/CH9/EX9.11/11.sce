clc
Q=0.05; // m^3/s
v=2; // m/s
f=0.005;
L_s=5; // m
d=0.178; // m
g=9.81; // m/s^2 
L_d=20; // m
p2=1.5*10^5; // N/m^2
p1=0.5*10^5; // N/m^2
rho=1000; //kg/m^3
z2=15; // m
z1=5; // m
N1=1500/60; // rps




d=(4*Q/%pi/v)^(1/2);
H_f_s=4*f*L_s/d*v^2/2/g;
H_f_d=4*f*L_d/d*v^2/2/g;

H=1/(1-0.25)*((p2-p1)/rho/g + v^2/2/g + z2 - z1 + H_f_s + H_f_d);

// n=rho*g*Q*H/P

Q=[0 5 10 15 20 25];
H=[9.25 8.81 7.85 6.48 4.81 2.96];
P=[- 0.96 1.03 1.19 1.26 1.45];
n=[0 45 75 800 75 50]; 

H=27.96; // m
H1=6.48; // m
Q1=0.015; // m^3/s
Q=0.05; // m^3/s
D1=0.15; // m
n=0.80;

disp("Differential Head =")
disp(H)
disp("m")

N=N1*(H/H1)^(3/4)*(Q1/Q)^(1/2);

D=D1*(Q*N1/Q1/N)^(1/5);
disp("The impeller diameter =")
disp(D)
disp("m")

disp("The rotational speed at maximum efficiency =")
disp(N)
disp("rps")

P=rho*g*Q*H/n;
disp("Power input to the pump =")
disp(P)
disp("W")

N_s=N1*Q1^(1/2)/H1^(3/4);
