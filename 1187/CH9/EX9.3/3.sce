clc

// p=1/2*rho*w^2*R^2 + C


// At z=0
rho=900; // kg/m^3
g=9.81; // m/s^2
h=0.6; // m

C=rho*g*h;

// p = -rho*K^2/(2*R^2)+D
// From this we get, D = 9*w^2 + C

// At z = 0
// p = D - rho*K^2/2/R^2;
p_max=150000; // Pa

// From the above equation we obtain,
w=135.6; // rad/s

disp("The maximum speed at which the paddles may rotate about their vertical axis =")
disp(w)
disp("rad/s")
