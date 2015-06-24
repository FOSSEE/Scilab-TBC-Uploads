

//exapple 9.2 
clc; funcprot(0);
// Initialization of Variable
pi=3.1428;
rho=825;
mu=1.21;
g=9.81;
l=0.02;
de=0.02;//dia exterior
di=0.012;//dia interior
//calculation
//part 1
zi=pi*(6*(pi*de^2/4-pi*di^2/4)*l/pi)^(2/3)/(pi*l*(di+de)+2*pi*(de^2/4-di^2/4));
disp(zi, "sphericity of Raschig ring is:");
//part 2
u=0.04;
ds=0.003//diameter of each sphere
zi=pi*(6*pi*ds^3/pi)^(2/3)/6/pi/ds^2;//sphericity
disp(zi, "sphericity of given object is:");
Ap=4*ds^2-4*3/4*(ds^2-pi*ds^2/4);//projected area
dp=sqrt(4*Ap/pi);//projected dia
Re=dp*u*rho/mu;
disp(Re, "Reynolds no. for the object:");
//using graph b/w Re and zi and Cd
Cd=105;//coeff. of drag
Fd=Ap*Cd*u^2*rho/2;
disp(Fd,"The drag force on object in (N):")

