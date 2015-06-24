clc

U=40; // m/s
h=0.01; // m

m=2*U*h;
disp("(a) the strength of the line source =")
disp(m)
disp("m^2/s")

s = m/(2*%pi*U);
disp("(b) the distance s the line source is located behind the leading edge of the step =")
disp(s*1000)
disp("mm")

x=0; // m
y=0.005; // m

u=U + m/(2*%pi)*(x/(x^2+y^2));
v=m/(2*%pi)*(y/(x^2+y^2));
disp("Horizontal component =")
disp(u)
disp("m/s")

disp("Vertical Component =")
disp(v)
disp("m/s")
