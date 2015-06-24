

//exapple 9.1 
clc; funcprot(0);
// Initialization of Variable
rho=1.2;
mu=1.85/100000;
pi=3.1428;
d=3;
v=50*1000/3600;
//calculation part 1
Re=d*rho*v/mu;
//from chart of drag coeff. vs Re
Cd=0.2;//coeff. of drag
Ad=pi*d^2/4;//projected area
Fd=Ad*Cd*rho*v^2/2;
disp(Fd , "The drag force on sphere in N");
//part 2
v=2;
l=0.25;
Re=l*v*rho/mu;
zi=4*pi*(l^3*3/4/pi)^(2/3)/6/l^2;//sphericity
//using graph
Cd=2;
Ad=l^2;
Fd=Ad*Cd*rho*v^2/2;
disp(Fd , "The drag force on cube in N");

