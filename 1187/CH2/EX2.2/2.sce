clc
d=2; // m
a=1; // radius in m
rho=880; // density of oil in kg/m^3
g=9.81; // m/s^2
rho_w=1000; // density of water in kg/m^3

C_0=4*a/3/%pi; // centroid of the upper semicircle
h1=a-C_0; // distance of the centroid from the top

P1=rho*g*h1; // Pressure of the oil at this point
F1=P1*%pi*a^2/2; // Force exerted by the oil on the upper half of the wall

cp1=a^4*(%pi/8-8/(9*%pi)); // (AK^2)_C

cp2=cp1/(%pi*a^2/2*h1); // Centre of Pressure below the centroid

cp0=cp2+h1; // Centre of Pressure below the top

P_w=(rho*g*a)+(rho_w*g*C_0);
F_w=P_w*%pi*a^2/2;

h2=C_0+rho/rho_w;
cp2_w=cp1/(%pi*a^2/2*h2);
cp0_w=a+C_0+cp2_w; // below the top of cylinder

F_total=F1+F_w;

// F1*cp0 + F_w*cp0_w = F_total*x

x=(F1*cp0 + F_w*cp0_w)/F_total;

disp("Total force =")
disp(F_total)
disp("N")

disp("Distance of line of action of total force from top of cylinder =")
disp(x)
disp("m")