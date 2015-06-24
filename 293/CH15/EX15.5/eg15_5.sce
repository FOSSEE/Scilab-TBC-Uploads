//b
mu0 = 4*%pi*10^-7 ;
//plunger magnet dimensions (in meters)
x = 0.025; 
h = 0.05;
a = 0.025;
g = 0.00125; 

mmf = 1414; //(in At)

F = %pi*a*mu0*(mmf^2)*(h^2)*(1/(x + h)^2)/g; //magnitude of the force
disp(F, "magnitude of the force (in Newtons) = ")