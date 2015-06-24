clc
// dp_AB+dp_BC=dp_AD+dp_DC

// dp_AD=2*f*rho*v^2*L/d

// dp_AD=16600*(3-Q)^2
// Likewise 
// dp_AB=16600*Q^2
// dp_BC=16600*(Q+0.5)^2
// dp_DC=16600*(2.1-Q)^2
// By solving above 5 equations, we get

Q=1.175; //litres per second

disp("The rate of flow from B to C =")
disp(Q+0.5)
disp("litres per second")

dp_AD=16600*(3-Q)^2;
dp_AB=16600*Q^2;
dp_BC=16600*(Q+0.5)^2;
dp_DC=16600*(2.1-Q)^2;

disp("dp_AD =")
disp(dp_AD/1000)
disp("kN/m^2")

disp("dp_AB =")
disp(dp_AB/1000)
disp("kN/m^2")

disp("dp_BC =")
disp(dp_BC/1000)
disp("kN/m^2")

disp("dp_DC =")
disp(dp_DC/1000)
disp("kN/m^2")


disp("The lowest pressure drop is in the pipe connecting C and D")