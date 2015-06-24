

//exapple 9.2 
clc; funcprot(0);
// Initialization of Variable
rho=1.2;
mu=1.85/100000;
pi=3.1428;
g=9.81;
d=1.38;
t=0.1;//thickness
v=30*1000/3600;
T=26.2;//Tension
m=0.51//mass
theta=60*pi/180;
//calculation
Fd=T*cos(theta);
disp(Fd,"Drag force in N:");
A=pi*d^2/4;
Ad=A*cos(theta);//area component to drag
Cd=2*Fd/Ad/rho/v^2;//coeff of drag
disp(Cd , "The drag coefficient:")
Fg=m*g;//force of gravity
Fb=rho*pi*d^2/4*t*g;//buoyant force
Fl=Fg-Fb+T*sin(theta);
disp(Fl , "The lift force in N :");
Al=A*sin(theta);
Cl=2*Fl/Al/rho/v^2;
disp(Cl ,"The coefficient of lift:")
