

//exapple 3.1 
clc; funcprot(0);
// Initialization of Variable
rho=998;
mu=1.002/1000;
x=48/100;
u=19.6/100;
x1=30/100;
b=2.6;
//calculation
//part1
disp("fluid in boundary layer would be entirely in streamline motion ");
Re=rho*x*u/mu;
printf("reynolds no is %.2e",Re);
//part 2
Re1=rho*x1*u/mu;
delta=x1*4.64*Re1^-.5;
disp(delta*1000,"boundary layer width in (mm):");
//part3
y=0.5*delta;//middle of boundary layer
ux=3/2*u*y/delta-.5*u*(y/delta)^3;
disp(ux*100,"velocity of water in (cm/s):");
//part4
R=0.323*rho*u^2*Re1^-0.5;
disp(R,"shear stress at 30cm in (N/m^2):");
//part5
Rms=0.646*rho*u^2*Re^-0.5;
disp(Rms,"mean shear stress experienced over whole plate in (N/m^2)");
//part6
F=Rms*x*b;
disp(F,"total force experienced by the plate in (N)")

