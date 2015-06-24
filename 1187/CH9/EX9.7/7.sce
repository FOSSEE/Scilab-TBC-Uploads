clc

l1=10; // m
r1=2; // m
C_D1=0.0588;
theta1=6.5; // degrees

AR1=l1/r1; // Aspect ratio

C_L=0.914;

C_D2=C_L^2/(%pi*AR1);
theta2=atand(C_L/(%pi*AR1))

C_D3=C_D1-C_D2;
theta3=theta1-theta2;

AR2=8;

C_Di=C_L^2/(%pi*AR2);
C_D=C_Di+C_D3;

theta4=atand(C_L/(%pi*AR2));
theta=theta4+theta3;

disp("Lift coefficient =")
disp(C_L)

disp("Drag coefficient =")
disp(C_D)

disp("Effective angle of attack =")
disp(theta)
disp("degrees")
