//Finding of Head
//Giiven
f=0.032;
l=400;
d=0.3;
q=0.3;
g=9.81;
//TO find
A=(%pi/4)*d^2
V=q/A;
v1=(V^2);
x=1.5+(f*l/d);
y=v1/(2*g);
H=x*y;
disp("Difference in water level ="+string(H)+" meter")
