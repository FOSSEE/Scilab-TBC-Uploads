clear;
clc;

printf("\n Example 10.9\n");

//The proces is defined by
//    Ca = B1*exp(sqrt((k/D)y)) + B2*exp(-sqrt((k/D)y))

//Boundary conditions as 
//    Ca=Cai       at y=0
//    Ca=Cai/2     at y=l

//Using above 3 equations, final equation is derived as follows

//Assuming
//    ratio = (Na)y=l / (Na)y=0
//    z=l*sqrt(k/D)

z=0.693;

ratio=(exp(sqrt(z))+exp(-sqrt(z))-4)/(2*(1-exp(-sqrt(z))-exp(sqrt(z))));

printf("\n The final ratio is %.2f \n",ratio);

//End