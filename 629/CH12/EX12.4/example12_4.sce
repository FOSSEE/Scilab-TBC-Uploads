clear
clc
//Example 12.4 DRAG FORCE ON A SPHERE
k=1.4;
p=101; //pressure[kPa]
M=0.7; //Mach number
q=k*p*M^2/2 //kinetic pressure[kPa]
CD=0.95;
D=0.01; //[m]
A=%pi*D^2/4 //area[m^2]
//Drag force
FD=CD*q*A*10^3 //[N]
printf("\n The drag force on the sphere = %.2f N.\n",FD)