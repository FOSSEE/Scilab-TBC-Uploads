clc
T=228; //K
M=2;
R=287; //Jkg K
y=1.4;

C=sqrt(y*R*T);

V=M*C*3600/1000;
disp("Velocity of the plane =")
disp(V)
disp("km/h")