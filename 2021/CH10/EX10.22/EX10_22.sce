//Finding of Water surface Slope
//Given
sb=1/4000;
sf=.00004;
T=10;
B=10;
g=9.81;
y=1.5;
v=1;
//To Find
A=B*y;
q=A*v;
z=(sb-sf)/(1-((q^2*T)/(g*A^3)));
disp("Water surface slope ="+string(z)+"no units ")
