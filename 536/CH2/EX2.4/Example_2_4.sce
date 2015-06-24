clc;

printf("Example 2.4\n");
//Momentum per second of approaching liquid in Y-direction = rho*u^2*A
rho=1000; //Density of water
d=50*10^-3; //Diameter of pipe
u=5; //Velocity of water in pipe
printf("\n Given\n Density of water = %d kg/m^3\n Pipe diameter = %.3f m \n Velocity = %d m/s",rho,d,u);
M=rho*u^2*%pi/4*d^2;
printf("\n\n Momentum per second of approaching liquid in Y-direction = %.1f N",M);
Rf=M*(cos(%pi/4)+sin(%pi/4));
printf("\n The resultant force in direction of arm of bracket = %.1f N",Rf);