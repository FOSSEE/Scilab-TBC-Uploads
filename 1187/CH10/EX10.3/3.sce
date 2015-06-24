clc

h1=0.45; // m
g=9.81; // m/s^2
b1=0.8; // m
h2=0.35; // m
b2=0.3; // m
disp("(a) the flow rate")
Q=sqrt((h1-h2)*2*g/((1/(h1*b1)^2)-(1/(h2*b2)^2)));
disp("(a) Flow rate =")
disp(Q)
disp("m^3/s")

disp("(b) the Froude number at the throat")
Fr2=Q/(sqrt(g)*b2*h2^(3/2));
disp("The Froude number at the throat =")
disp(Fr2)

disp("(c) the depth of water at the throat")

// (h1/h2)^(3) + 1/2*(b2/b1)^2 = 3/2*(h1/h2)^2

// The solution for the above eqn is as follows
// (h1/h2) = 0.5 + cos(2arcsin(b2/b1)/3)

// h1/h2=1.467

h2_new=h1/1.467;
disp("Depth of water at the throat =")
disp(h2_new)
disp("m")

disp("(d)the new flow rate")
Q=sqrt(g)*b2*h2_new^(3/2);
disp("New flow rate =")
disp(Q)
disp("m^3/s")
