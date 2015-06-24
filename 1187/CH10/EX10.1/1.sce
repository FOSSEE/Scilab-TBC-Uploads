clc

Q=400; // m^3/s
b2=20; // m
g=9.81; // m/s^2
b1=25; // m

h2=(Q/b2/sqrt(g))^(2/3);
// Since energy is conserved
// h1 + u1^2/2g = h2 +u2^2/2g = h2 + h2/2 = 3h2/2

// h1 + 1/2*g*(Q/(b1h1))^2 = 3*h2/2;

// h1^3-5.16*h1^2+13.05 = 0;

// By solving this cubic equation

h1=4.52; // m

disp("(a) The depth of the water under the brigde =")
disp(h2)
disp("m")

disp("(b) the depth of water upstream =")
disp(h1)
disp("m")
