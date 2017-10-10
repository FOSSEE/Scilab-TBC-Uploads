//Eg-14.2
//pg-582

clear
clc
close()
//Approximate the first and second derivatives using central difference formula

//At i = 1 ;    14y0 - 37y1 + 18y2 = 0;
// Using y0 = 0
//    -37y1 + 18y2 = 0    (1)

//At i = 2 ;    14y1 - 37y2 + 18y3 = 0;    (2)

//At i = 3 ; and taking y4 = 1 ;     14y2 - 37y3 = -18;    (3)

//We have 3 equations and 3 unknowns

A = [-37 18 0;14 -37 18;0 14 -37];
B = [0;0;-18];

//Thomas method

b0 = -37;
c0 = 18;
a1 = 14;
b1 = -37;
c1 = 18;
a2 = 14;
b2 = -37;
r0 = 0;
r1 = 0;
r2 = -18;

B0 = b0;
G0 = r0/B0;

B1 = b1 - a1*c0/B0;
G1 = (r1 - a1*r0)/B1;

B2 = b2 - a2*c1/B1;
G2 = (r2 - a2*r1)/B2;

x(3) = G2;
x(2) = G1 - c1*x(3)/B1;
x(1) = G0 - c0*x(2)/B0;

disp(x)

y(1) = 0;    //BC 1
y(2:4) = x(1:3);
y(5) = 1    //BC 2

x1 = 0:0.25:1;
plot(x1,y,'ks')
xlabel('x')
ylabel('y')